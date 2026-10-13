#!/bin/bash
# Point ~/.claude/instagram at this repo's .claude/instagram so the /ig-*
# skills find voice.md (and log.md, swipe.md, plan.md) in every session.
# Leaves a real ~/.claude/instagram folder alone if one already exists.
src="${CLAUDE_PROJECT_DIR:-$(pwd)}/.claude/instagram"
dst="$HOME/.claude/instagram"
[ -d "$src" ] || exit 0
mkdir -p "$HOME/.claude"
if [ -L "$dst" ] || [ ! -e "$dst" ]; then
  ln -sfn "$src" "$dst"
fi
exit 0
