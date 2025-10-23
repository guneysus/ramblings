---
title: "Quick Decisions: Picking web frameworks by product type"
---


- SaaS: Next.js
- Dashboard: Next.js
- Marketing + App Hybrids: Next.js
- Product documentation: Docusaurus, Astro
- Developer portals: Docusaurus
- Content-heavy static sites with structured data: Gatsby
- Blog: Astro, (or Gatsby if GraphQL-based CMS)
- Marketing: Astro


```mermaid
flowchart TD

%% === Next.js ===
subgraph N[Next.js]
  N1[Content Source: API / CMS / DB] --> N2[Build Step: getStaticProps / getServerSideProps]
  N2 --> N3["Pre-render Pages (SSG SSR ISR)"]
  N3 --> N4[Serve via Edge / CDN]
  N4 --> N5["Client React Hydration (CSR)"]
end

%% === Docusaurus ===
subgraph D[Docusaurus]
  D1[Markdown / MDX Files] --> D2[Static Site Generator]
  D2 --> D3[Pure Static HTML/CSS/JS]
  D3 --> D4[Served from CDN or GitHub Pages]
end

%% === Gatsby ===
subgraph G[Gatsby]
  G1[Content Source: CMS / Markdown / APIs] --> G2[GraphQL Data Layer]
  G2 --> G3[Static Build: React + GraphQL Compile]
  G3 --> G4[Generated Static HTML + Hydration]
  G4 --> G5["Served from CDN (Netlify etc)"]
end

%% === Astro ===
subgraph A[Astro]
  A1[Markdown / CMS / API Data] --> A2[Build Step: Partial Hydration Islands]
  A2 --> A3[Static HTML + Optional JS Islands]
  A3 --> A4[Zero JS by default – Load islands on demand]
  A4 --> A5[Served from CDN or Edge Runtime]
end

%% === Group Labels ===
classDef framework fill:#222,color:#fff,stroke:#666,stroke-width:1px;
class N,D,G,A framework;

%% === Layout adjustments ===
N --- D --- G --- A

```


<!--


### TL;DR

- **Next.js** → For **apps** (dynamic, hybrid, enterprise-grade)
- **Docusaurus** → For **docs** (fast, easy, versioned)
- **Gatsby** → For **CMS-driven content** (GraphQL-heavy)
- **Astro** → For **static + minimal JS content** (modern, fast)



## Quick Decisions: Picking techstack for webframework

## 🧰 Tech Stack Recommendations

| Framework | Ideal Use Case | Recommended CMS / Content Source | Recommended Hosting | Typical Integrations | Why This Stack Works |
| --- | --- | --- | --- | --- | --- |
| **Next.js** | SaaS, dashboards, hybrid app + site | 🟢 **Sanity**, **Strapi**, **Contentful**, or **Direct DB (PostgreSQL)** | AWS / Azure | Analytics (Plausible, PostHog), Auth (NextAuth), Payments (Stripe) | Combines **SSR**, **ISR**, and **API routes** for dynamic + static hybrid apps |
| **Docusaurus** | Product / API documentation | 🟢 **Markdown + MDX**, optional integration with CMS via plugins | **GitHub Pages**, **Cloudflare Pages** | Search (Algolia DocSearch), i18n, GitHub Actions for deploy | One-command setup, **versioned docs**, built-in theme for dev portals |
| **Gatsby** | Blog or CMS-heavy marketing site | 🟢 **Contentful**, **DatoCMS**, **Sanity**, **WordPress** (via GraphQL) | **Netlify**, **AWS Amplify** | Analytics, SEO, image optimization, sitemap | Great for **structured data** and **editor-driven** workflows |
| **Astro** | Blogs, personal sites, content-driven marketing pages | 🟢 **Markdown**, **MDX**, or **Headless CMS** (Sanity / Contentful) | **Cloudflare Pages**, **Netlify** | TailwindCSS, SEO, RSS feeds, remark/rehype plugins | **Zero-JS by default**, excellent performance, flexible templating |
| **Next.js (Docs Hybrid)** | Product website + docs under one roof | 🟢 **MDX for docs**, **Sanity or Notion API** for dynamic pages | *TODO* | MDX Bundler, unified search, analytics | Ideal for **combining docs + product site** under single domain and theme |

-->