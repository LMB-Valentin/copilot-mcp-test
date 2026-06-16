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

Mount `myFolder/` (junction to `myFolder/`):

```powershell
.\mount.ps1 path/to/myFolder ./target/path/to/myFolder
```

Pop/remove the junction (keeps original folder intact):

```powershell
.\pop.ps1 ./target/path/to/myFolder
```

Initialize submodules:

```powershell
git submodule update --init --recursive
```