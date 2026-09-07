Use Archify to turn this plain-language system description into a high-level architecture diagram:


Architect a visualization for the "Bank Call-Session Notification" feature.

SYSTEM OVERVIEW
When a bank call center wants to reach a customer, it triggers an outbound
call through a 3rd-party IVR/voice provider. The customer's mobile app shows
a dismissible banner in the notifications page reflecting the live call
status ("The bank is calling you" → "You are on call" → "You've missed a
call"), which auto-expires after a TTL.

ACTORS & EXTERNAL SYSTEMS
1. Call Center Agent — internal user, initiates outbound calls via the
   Call Center Platform.
2. IVR/Voice Provider (3rd party, e.g., Twilio) — places the call, emits
   lifecycle webhooks (call.started, call.answered, call.no_answer,
   call.ended). Untrusted external system: draws behind a DMZ boundary.
3. Customer Mobile App — iOS/Android; receives push notifications and
   pulls banner state. Renders banner from server data; auto-hides it
   at displayUntil expiry.

INTERNAL COMPONENTS (grouped inside "Bank Core" boundary)
4. Call Center Platform — UI/orchestration used by agents; creates call
   sessions and asks the provider to dial.
5. Integration Adapter (DMZ) — receives provider webhooks, validates HMAC
   signature + timestamp (anti-replay), normalizes provider events into
   internal events; anti-corruption layer so the vendor is swappable.
6. Call Session Service — owns the session state machine
   (CREATED → RINGING → IN_CALL → COMPLETED | MISSED | CANCELLED),
   enforces forward-only transitions with optimistic versioning,
   writes an outbox row transactionally with each state change.
7. Redis — operational projection only (NOT system of record):
   - bank:call-session:{sessionId} hash with EXPIREAT = bannerExpiresAt
   - bank:customer:{customerId}:active-call pointer (same TTL)
   - bank:call-event:{provider}:{eventId} idempotency key (SET NX EX 7d)
   TTLs per status: RINGING 30 min, IN_CALL 2 h, MISSED 24 h.
8. Durable Store (SQL/event store) — system of record; persists every
   provider event and state transition for audit/compliance.
9. Outbox / Event Bus (Kafka, topic bank.call-session.status.v1) —
   publishes CALL_SESSION_STATUS_CHANGED events.
10. Notification Service — consumes Kafka events; sends FCM/APNs push
    containing ONLY: sessionId, status, messageCode, updatedAt,
    displayUntil, serverNow, terminal flag. No PII.
11. API Gateway / BFF — fronts mobile endpoints; authenticates customers
    via access token; customer identity comes from token, never request
    body.

KEY FLOWS TO DRAW (label the arrows)
F1  Agent → Call Center Platform: POST /internal/v1/call-sessions
    (Idempotency-Key) → platform instructs Provider to dial.
F2  Provider → Integration Adapter: POST /v1/integrations/voice/providers/
    {provider}/events (signed webhook) → 202 Accepted.
F3  Adapter → Call Session Service: POST /internal/v1/call-sessions/
    {sessionId}/events (normalized event).
F4  Call Session Service → Redis: conditional state update (Lua/WATCH),
    set TTL, update customer pointer, record event id.
F5  Call Session Service → Durable Store + Outbox: transactional write.
F6  Outbox → Kafka → Notification Service → Provider's push
    (FCM/APNs) → Mobile App (push = hint only, "action: REFRESH").
F7  Mobile App → API Gateway → Call Session Service:
    GET /mobile/v1/me/call-sessions/active → 200 with banner payload
    {status, messageCode, displayUntil, serverTime} or 204 (no banner).
    App reconciles on push receipt, foreground, page open, app start.
F8  Offline behavior: app renders degraded banner from push payload,
    bounded by displayUntil (skew-corrected), never past expiry;
    retries with backoff; terminal events clear the banner locally
    without network.

STATE MACHINE (draw as a separate state diagram)
CREATED → RINGING (CALL_STARTED)
RINGING → IN_CALL (CALL_ANSWERED)
RINGING → MISSED (CALL_NO_ANSWER)
IN_CALL → COMPLETED (CALL_COMPLETED) → banner deleted
CREATED/RINGING → CANCELLED (CALL_CANCELLED) → banner deleted
Forward-only; each transition bumps version.

DELIVERABLES
1. C4-style container diagram: external systems grayed, "Bank Core"
   boundary, trust boundary around the DMZ/Integration Adapter, data
   stores as cylinders, Redis annotated "TTL'd projection".
2. Sequence diagram covering F1–F7 for one full call (answered case).
3. State diagram from the machine above, with TTL annotations per state.
Label every edge with protocol (HTTPS/mTLS, Kafka, FCM/APNs, Redis cmd)
and sync/async. Include a legend. Keep it readable — max ~12 nodes per
diagram, split views rather than cramming.