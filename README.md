# claude-skill

Open this repo in a Claude Code cloud session and a startup hook
(`.claude/hooks/session-start.sh`) installs these agent skills globally:

| Skill | Source | Purpose |
|---|---|---|
| find-skills | vercel-labs/skills | Discover and install more skills |
| frontend-design | anthropics/skills | Distinctive, intentional UI design |
| webapp-testing | anthropics/skills | Test web apps in a real browser with Playwright |
| vercel-react-best-practices | vercel-labs/agent-skills | React/Next.js performance rules |
| vercel-composition-patterns | vercel-labs/agent-skills | React component architecture |
| deploy-to-vercel | vercel-labs/agent-skills | Deploy sites to Vercel (uploads your project) |
| web-design-guidelines | vercel-labs/agent-skills | UI, UX and accessibility review |
| writing-guidelines | vercel-labs/agent-skills | Review copy and docs |
| web-quality-audit | addyosmani/web-quality-skills | Full site audit (performance, a11y, SEO, best practices) |
| performance | addyosmani/web-quality-skills | Page speed and load time |
| core-web-vitals | addyosmani/web-quality-skills | LCP, INP and CLS fixes |
| accessibility | addyosmani/web-quality-skills | WCAG 2.2 accessibility |
| seo | addyosmani/web-quality-skills | Search engine optimization |
| best-practices | addyosmani/web-quality-skills | Modern web security and code quality |
| csrf-protection | secondsky/claude-skills | CSRF defenses |
| xss-prevention | secondsky/claude-skills | XSS defenses |
| cybersecurity | secondsky/claude-skills | OWASP Top 10, pentesting, threat modeling |
| nextjs | secondsky/claude-skills | Next.js 16 App Router |
| tailwind-v4-shadcn | secondsky/claude-skills | Tailwind v4 with shadcn/ui |
| tanstack-query | secondsky/claude-skills | TanStack Query v5 data fetching |
| systematic-debugging | secondsky/claude-skills | Root cause first debugging |
| root-cause-tracing | secondsky/claude-skills | Trace bugs back to their trigger |
| code-review | secondsky/claude-skills | Code review practices (replaces the built-in /code-review) |

To add a skill, add it to `SOURCES` in the hook script.

To install the same skills on your own computer, run:

```bash
npx skills add vercel-labs/skills --skill find-skills -g -y
npx skills add vercel-labs/agent-skills --skill vercel-react-best-practices vercel-composition-patterns deploy-to-vercel web-design-guidelines writing-guidelines -g -y
npx skills add anthropics/skills --skill frontend-design webapp-testing -g -y
npx skills add addyosmani/web-quality-skills --skill web-quality-audit performance core-web-vitals accessibility seo best-practices -g -y
npx skills add secondsky/claude-skills --skill csrf-protection xss-prevention cybersecurity nextjs tailwind-v4-shadcn tanstack-query systematic-debugging root-cause-tracing code-review -g -y
```
