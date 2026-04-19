# PurchasePlus 2026 — Proposed Pages

Standalone HTML preview of three new product pages for the 2026 site refresh. These will be migrated into Webflow once reviewed.

## Live preview

Once GitHub Pages is enabled on this repo, the pages are served at:

- Index: `https://akilalohan-lang.github.io/purchaseplus-2026-pages/`
- Invoicing & AP Automation: `https://akilalohan-lang.github.io/purchaseplus-2026-pages/invoicing-and-ap-automation/`
- Recipe & Menu Management: `https://akilalohan-lang.github.io/purchaseplus-2026-pages/recipe-and-menu-management/`
- Budgeting & Financials: `https://akilalohan-lang.github.io/purchaseplus-2026-pages/budgeting-and-financials/`

## Structure

Each page mirrors the live `/inventory` page: **6 widgets** between the global header and footer.

| # | Widget | Source |
|---|--------|--------|
| 1 | Hero (video) | DOCX Hero copy + placeholder video |
| 2 | Reality Check (3 problem cards) | DOCX "The Problem" or drafted in PP voice |
| 3 | Advantage (3 numbered capabilities) | DOCX "How It Works" / top 3 Key Features |
| 4 | Comparison Table | Drafted per page against Spreadsheets / Legacy / Niche |
| 5 | Three Pillars (pin-scroll) | DOCX Capabilities, condensed to 3 |
| 6 | Final CTA with live formula | DOCX CTA banner + domain-specific formula |

## Assets still needed

- **Hero video** for each page (5-second silent MP4 loop, characters consistent with existing PurchasePlus persona illustrations)
- Any screenshots to replace feature placeholders

## Proposed hero videos (5-sec loops)

- **Invoicing & AP Automation** — PP character pulls a stream of invoices from an inbox on one side, a glowing "AI" orb scans them, three-way match badges tick green, the invoices pile into an approved stack flowing into an ERP card.
- **Recipe & Menu Management** — PP character chef holds a tablet; ingredient tiles (milk, chicken, flour) with live price tags flicker upward, sub-recipes cascade into a final dish card that reveals a GP% ring.
- **Budgeting & Financials** — PP character finance lead slides a budget bar that fills; POs float in as blocks, a threshold line lights up, a consolidated rollup card appears with three property pills.

## Webflow migration notes

- Header and footer are pasted verbatim from `PurchasePlus Widgets/HTMLs/000 Header & Footer/`.
- Every widget has scoped CSS (`.invoicing_*`, `.recipe_*`, `.budgeting_*`) for clean Webflow Embed insertion.
- Animations use GSAP (CDN) and vanilla IntersectionObserver — both work inside Webflow Embed blocks.
