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

To add a skill, add it to `SOURCES` in the hook script.

To install the same skills on your own computer, run:

```bash
npx skills add vercel-labs/skills --skill find-skills -g -y
npx skills add vercel-labs/agent-skills --skill vercel-react-best-practices vercel-composition-patterns deploy-to-vercel web-design-guidelines writing-guidelines -g -y
npx skills add anthropics/skills --skill frontend-design webapp-testing -g -y
```
