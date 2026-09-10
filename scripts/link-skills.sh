#!/usr/bin/env bash
# Flat-symlinks every skill in this repo's skills/ dir into
# ~/.agents/skills/<name> and ~/.claude/skills/<name>, matching the
# convention used for every other (non-repo) skill on this machine.
# Safe to re-run after adding, removing, or renaming a skill.
set -euo pipefail

REPO_ROOT="$(git -C "$(dirname "${BASH_SOURCE[0]}")" rev-parse --show-toplevel)"
SKILLS_DIR="$REPO_ROOT/skills"
AGENTS_SKILLS="$HOME/.agents/skills"
CLAUDE_SKILLS="$HOME/.claude/skills"

mkdir -p "$AGENTS_SKILLS" "$CLAUDE_SKILLS"

# Drop legacy whole-repo symlinks (e.g. ~/.agents/skills/frebreco -> $REPO_ROOT)
# that nest every skill one level too deep.
for dir in "$AGENTS_SKILLS" "$CLAUDE_SKILLS"; do
  for link in "$dir"/*; do
    [ -L "$link" ] || continue
    if [ "$(readlink -f "$link")" = "$REPO_ROOT" ]; then
      echo "removing legacy repo-level symlink: $link"
      rm "$link"
    fi
  done
done

link_skill() {
  local name="$1" path="$2" target="$3"
  if [ -L "$path" ]; then
    if [ "$(readlink "$path")" = "$target" ]; then
      return # already correct
    fi
    echo "skip $path: already a symlink to $(readlink "$path")"
    return
  fi
  if [ -e "$path" ]; then
    echo "skip $path: exists and is not a symlink"
    return
  fi
  ln -s "$target" "$path"
  echo "linked $path -> $target"
}

for skill_dir in "$SKILLS_DIR"/*/; do
  [ -f "$skill_dir/SKILL.md" ] || continue
  name="$(basename "$skill_dir")"
  link_skill "$name" "$AGENTS_SKILLS/$name" "$SKILLS_DIR/$name"
  link_skill "$name" "$CLAUDE_SKILLS/$name" "../../.agents/skills/$name"
done

# Clean up dangling symlinks left behind by skills removed from the repo.
# Only touch links that actually resolve into this repo's skills/ dir, so
# unrelated broken symlinks (other tools' skills) are never touched.
for dir in "$AGENTS_SKILLS" "$CLAUDE_SKILLS"; do
  for link in "$dir"/*; do
    [ -L "$link" ] || continue
    [ -e "$link" ] && continue # not dangling
    case "$(readlink -f "$link")" in
      "$SKILLS_DIR"/*)
        echo "removing stale symlink: $link -> $(readlink "$link")"
        rm "$link"
        ;;
    esac
  done
done
