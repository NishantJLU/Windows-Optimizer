# Contributing to WinOptimizer

First off, thank you for considering contributing to WinOptimizer! It's people like you that make WinOptimizer a great tool for everyone.

## How Can I Contribute?

### 🛠️ Adding New Modules
1. Define a new function in `WinOptimizer.ps1` using the naming convention `Invoke-YourModuleName`.
2. Add a menu entry in `Show-Menu`.
3. Add a switch case in the main loop to call your function.

### 👤 Adding New Profiles
Profiles are stored in `config.json`. To add a new profile:
1. Add a new object under `"Profiles"`.
2. Define its `"Description"`, `"Bloatware"` list, and `"DevApps"` list.

### 🐛 Reporting Bugs
Use the GitHub [Issue Tracker](https://github.com/NishantJLU/Windows-Optimizer/issues) and fill out the provided template.

## Style Guide
- Use `Write-OutputColor` for UI consistency.
- Always include a `Write-Log` entry for any system change.
- Respect the `$DryRun` flag in every module.
- Use `Try/Catch` blocks for registry/file operations.

## Pull Request Process
1. Create a branch for your feature.
2. Ensure your code is formatted correctly.
3. Update the `README.md` if you added a new feature.
4. Submit your PR!
