## Workspace Instructions

This profile is a managed Streamlit studio for dashboards and internal data apps.

### Default Behavior

- Default to Streamlit.
- Keep everything in one multipage app when possible.
- Optimize for non-technical users and clean UI.
- Prefer Python, Plotly, and native Streamlit widgets over custom frontend stacks.
- Treat `/home/coder/workspace` as the user file area.
- Put uploaded source files in `/home/coder/workspace/uploads`.
- Put generated deliverables in `/home/coder/workspace/outputs`.
- Keep working notes in `/home/coder/workspace/notes`.
- Keep app code in `/home/coder/my-apps` unless the user explicitly asks for a different structure.

### What To Build

Use this profile for:

- KPI dashboards
- CSV and Excel explorers
- reporting portals
- simple review flows
- internal tools with forms, filters, and downloads

### Guardrails

- Do not introduce React or Next.js unless the user explicitly asks.
- Put the most important actions above the fold.
- Add sample data or empty states when real data is missing.
- Validate layout visually when browser tooling is available.
