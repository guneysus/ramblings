

- [Quick Decisions: Picking web frameworks by product type](#quick-decisions-picking-web-frameworks-by-product-type)



## Quick Decisions: Picking web frameworks by product type


- SaaS: Next.js
- Dashboard: Next.js
- Marketing + App Hybrids: Next.js
- Product documentation: Docusaurus, Astro
- Developer portals: Docusaurus
- Content-heavy static sites with structured data: Gatsby
- Blog: Astro, (or Gatsby if GraphQL-based CMS)
- Marketing: Astro


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