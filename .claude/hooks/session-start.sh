#!/bin/bash
# Installs this account's agent skills globally at the start of every
# Claude Code cloud session, since cloud containers don't keep them.
set -uo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

SKILLS_DIR="$HOME/.claude/skills"

# repo|skill names (space separated)
SOURCES=(
  "vercel-labs/skills|find-skills"
  "vercel-labs/agent-skills|vercel-react-best-practices vercel-composition-patterns deploy-to-vercel web-design-guidelines writing-guidelines"
  "anthropics/skills|frontend-design webapp-testing"
)

for entry in "${SOURCES[@]}"; do
  repo="${entry%%|*}"
  skills="${entry#*|}"

  missing=()
  for s in $skills; do
    [ -f "$SKILLS_DIR/$s/SKILL.md" ] || missing+=("$s")
  done
  [ ${#missing[@]} -eq 0 ] && continue

  echo "Installing from $repo: ${missing[*]}"
  # Some non-Claude agents reject global installs and make the CLI exit
  # non-zero, so check for the skill files afterwards instead.
  npx -y skills add "$repo" --skill "${missing[@]}" -g -y > /dev/null 2>&1 || true

  for s in "${missing[@]}"; do
    [ -f "$SKILLS_DIR/$s/SKILL.md" ] || echo "Warning: skill '$s' failed to install" >&2
  done
done

exit 0
