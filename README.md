# copilot-mcp-test 🤖

Minimal setup for Copilot CLI + MATLAB/Simulink skills.

## 📦 Skills and submodules

`agents/` should point to `.agents/`, where skills are provided as submodules:

- `.agents/skills/matlab-agentic-toolkit`
- `.agents/skills/simulink-agentic-toolkit`

## ✅ Recommended config

Use these files from this repo as your preferred setup (typically under `~/.copilot/`):

- `.agents/mcp-config.json`
- `.agents/settings.json`

## 🛠️ Usage

Mount `agents/` (junction to `.agents/`):

```powershell
.\mount.ps1 -PathDir .\.agents -DirName agents
```

Pop/remove the `agents/` junction (keeps target folder intact):

```powershell
.\pop.ps1 -DirName agents
```

Initialize submodules:

```powershell
git submodule update --init --recursive
```