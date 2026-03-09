#!/bin/bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "usage: $0 <profile-id> <workspace-root>" >&2
  exit 1
fi

profile_id="$1"
workspace_root="$2"
repo_root="$(cd "$(dirname "$0")/.." && pwd)"
profile_root="$repo_root/profiles/$profile_id"

if [ ! -d "$profile_root" ]; then
  echo "unknown profile: $profile_id" >&2
  exit 1
fi

mkdir -p "$workspace_root/.codex/skills"

if [ -f "$profile_root/AGENTS.md" ]; then
  cp "$profile_root/AGENTS.md" "$workspace_root/AGENTS.md"
fi

if [ -d "$profile_root/.codex/skills" ]; then
  mkdir -p "$workspace_root/.codex"
  cp -R "$profile_root/.codex/skills" "$workspace_root/.codex/"
fi

if [ -d "$profile_root/starter" ]; then
  cp -R "$profile_root/starter/." "$workspace_root/"
fi

echo "installed profile: $profile_id"
