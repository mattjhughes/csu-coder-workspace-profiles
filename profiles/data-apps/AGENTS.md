## Workspace Instructions

This profile is for Python-first data applications.

### Default Behavior

- Default to Python.
- Prefer pandas-based workflows unless scale or performance requirements say otherwise.
- Keep data transformations explicit and easy to review.
- Build user-facing experiences that make upload, cleaning, filtering, and export obvious.

### What To Build

Use this profile for:

- upload and transform tools
- validation and outlier review apps
- analysis dashboards
- tabular workflows
- export-oriented utilities

### Guardrails

- Do not hide data assumptions.
- Preserve raw input where possible.
- Make transformations inspectable.
- Add downloadable outputs when it helps the workflow.
