# CSU Coder Workspace Profiles

Reusable profile packs for Coder workspaces.

This repository is designed to be cloned by a Coder workspace startup script after a user selects a setup profile such as:

- `general-coding`
- `streamlit-studio`
- `data-apps`
- `research-assistant`

Each profile contains:

- an `AGENTS.md`
- one or more Codex skills under `.codex/skills/`
- a `getting-started/` page for the Coder dashboard
- optional starter files under `starter/`
- a `profile.json` manifest

## Intended Use

1. A Coder template exposes a `setup_profile` parameter.
2. The startup script clones this repository at a pinned tag or commit.
3. The startup script copies the selected profile into the workspace.
4. The selected profile becomes the workspace's guidance and starter scaffold.

## Security

This repository is intended to be public.

It should never contain:

- API keys
- tokens
- `.env` files
- private certificates
- embedded credentials

If a workspace needs secrets, inject them through Coder template variables, user parameters, or a secret manager instead of committing them here.

## Profiles

### `general-coding`

Balanced coding workspace for typical software projects.

### `streamlit-studio`

Opinionated Streamlit workspace for dashboards and internal data apps.

### `data-apps`

Python-first data application workspace focused on uploads, transformations, charts, and exports.

### `research-assistant`

Research and prototyping workspace focused on synthesis, evaluation, note capture, and reproducible outputs.
