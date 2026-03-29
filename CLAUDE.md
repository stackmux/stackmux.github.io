## StackMux — agent context

This project is managed by StackMux. Read `STACKMUX.md` for your role and rules.

**Do not modify files in this directory.** This is the base repo. All implementation
must happen in workstream worktrees created by `stackmux start <branch>`.
Use `stackmux status` to see current workstreams.

## What This Is

GitHub Pages landing site for [StackMux](https://github.com/stackmux/stackmux), served at **stackmux.dev**. The entire site is a single static `index.html` file with all CSS and JS inlined — no build step, no bundler, no dependencies.

## Local Preview

```bash
python3 -m http.server 8000
# Then open http://localhost:8000
```

## Architecture

- **index.html** — The complete site: markup, styles (`<style>` block), and behavior (`<script>` block) all in one file. Supports light/dark themes via `prefers-color-scheme` media queries with a manual toggle. Uses Inter and JetBrains Mono fonts (Google Fonts with self-hosted woff2 fallbacks in `fonts/`).
- **CNAME** — Custom domain (`stackmux.dev`) for GitHub Pages.
- **favicon.svg / og-image.png** — Branding assets. `og-image.svg` is the source for the PNG.
- **robots.txt / sitemap.xml** — SEO. Update `sitemap.xml` `<lastmod>` when content changes.
- **GA4 tracking** — Google Analytics tag `G-B8TJZRMRWH` in the `<head>`.

## Deployment

Push to `main` → GitHub Pages deploys automatically. No CI/CD pipeline to run.

## License

Apache 2.0. The site copy intentionally leaves room for future paid/cloud options.
