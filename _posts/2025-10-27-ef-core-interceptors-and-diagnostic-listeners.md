---
title: EF Core Interceptors and Diagnostic Listeners
description: ""
date: 2025-10-27T19:40:01.187Z
preview: ""
tags: []
categories: []
---

The key difference between EF Core Interceptors[^1] and Diagnostics Listeners [^2] lies in their scope and capability to modify/suppress operations.


| Feature | EF Core Interceptors | Diagnostics Listeners |
| :--- | :--- | :--- |
| **Primary Goal** | **Modify or suppress** operations. | **Observe and diagnose** events. |
| **Modification** | **Yes**, can change command text, connection, or results. | **No**, events are read-only. |
| **Scope** | **Per-`DbContext` instance**. | **Process-wide/Global** (all contexts). |
| **Async Support** | **Yes** (supports async interception methods). | Generally **No** (synchronous event handling). |
| **Best For** | Behavior modification, fine-grained control (e.g., auditing, soft-deletes, query hints). | Global monitoring, feeding into APM/diagnostics tools. |

Source: <https://gemini.google.com/app/c827be2ba8a2a5a9>


## Footnotes:

[^1]: <https://learn.microsoft.com/en-us/ef/core/logging-events-diagnostics/interceptors>
[^2]: <https://learn.microsoft.com/en-us/ef/core/logging-events-diagnostics/diagnostic-listeners>

