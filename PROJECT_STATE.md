# PROJECT_STATE

## Project
Kenyon Finance Club — 3-page static website (Home, Program, About & Contact).

## Toolchain
- Build: `build.sh` (bash, copies `src/*.html` and `src/*.css` into `dist/`)
- Preview: `python3 -m http.server 8000` from `dist/`

## Steps

| Step | Status | Notes |
|---|---|---|
| Scaffold `src/` with 3 pages + shared stylesheet | DONE | `src/index.html`, `src/program.html`, `src/about.html`, `src/styles.css` |
| Write `build.sh` | DONE | Idempotent: clears and rebuilds `dist/` each run |
| Run build | DONE | 4 files produced in `dist/` |
| Serve locally & verify all pages/links (200 status) | DONE | index, program, about, styles.css all returned 200; all internal `href`s point to existing pages |
| Push to remote | PENDING | Not requested yet; no `gh auth status` check performed |

## Known issues
- Instagram link in `about.html` is a placeholder (`href="#"`) — update with the real handle URL when available.
- No GitHub Pages deployment configured yet.
