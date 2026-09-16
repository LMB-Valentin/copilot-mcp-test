# Copilot MCP Test 🤖

Minimal setup for Copilot CLI with MATLAB and Simulink skills.

## Prerequisites

Make sure you have the following installed:

- Git
- Copilot CLI
- Access to the required repositories and submodules

---

## 1. Clone the Repository

Open a terminal and clone the repository:

```bash
git clone https://github.com/LMB-Valentin/copilot-mcp-test.git
```

---

## 2. Navigate to the Project Directory

```bash
cd copilot-mcp-test
```

---

## 3. Initialize the Submodules

The MATLAB and Simulink skills are provided as Git submodules. Initialize them with:

```bash
git submodule update --init --recursive
```

The following skill repositories should be available:

- `.agents/skills/matlab-agentic-toolkit`
- `.agents/skills/simulink-agentic-toolkit`

---

## 4. Configure Copilot (Recommended)

Use the configuration files provided in this repository as your preferred Copilot configuration (typically under `~/.copilot/`):

- `.agents/mcp-config.json`
- `.agents/settings.json`

Example:

```bash
cp .agents/mcp-config.json ~/.copilot/
cp .agents/settings.json ~/.copilot/
```

---

## 5. Start Copilot CLI

From the `copilot-mcp-test` directory, launch Copilot:

```bash
copilot
```

---

## 6. Verify MCP Connectivity

Once Copilot starts, the MCP servers configured in `mcp-config.json` should be automatically detected and available.

You can verify the setup by asking Copilot to perform a MATLAB or Simulink-related task using the installed skills.

---

## Skills and Submodules

The `agents/` folder should point to `.agents/`, where the skills are provided as submodules:

```text
.agents/
└── skills/
    ├── matlab-agentic-toolkit
    └── simulink-agentic-toolkit
```

---

## Workspace Mounting

### Mount a Folder

Use the provided PowerShell script to create a junction to a workspace folder:

```powershell
.\mount.ps1 path/to/myFolder ./target/path/to/myFolder
```

Example:

```powershell
.\mount.ps1 C:\Projects\Model .\workspace\Model
```

### Remove a Mounted Folder

Remove the junction while keeping the original folder intact:

```powershell
.\pop.ps1 ./target/path/to/myFolder
```

Example:

```powershell
.\pop.ps1 .\workspace\Model
```

---

## Project Structure

```text
copilot-mcp-test/
├── .agents/
│   ├── mcp-config.json
│   ├── settings.json
│   └── skills/
│       ├── matlab-agentic-toolkit/
│       └── simulink-agentic-toolkit/
├── mount.ps1
└── pop.ps1
```

---

## Expected Result

After completing the steps above:

- The repository is cloned locally.
- MATLAB and Simulink skill submodules are initialized.
- Copilot uses the recommended configuration.
- MCP servers are available from Copilot CLI.
- Workspace folders can be mounted and removed using the provided scripts.
