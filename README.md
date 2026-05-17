# WinOptimizer v2.0

A comprehensive, modular Windows 10/11 optimization and setup utility designed for power users, developers, and gamers. This script automates system maintenance, privacy hardening, and software installation via a simple CLI interface.

## 🚀 Quick Start

1.  **Download** the entire repository.
2.  Right-click `Launch-WinOptimizer.bat` and select **Run as Administrator**.
3.  The script will automatically create a **System Restore Point** for safety.
4.  Select an option from the menu to begin optimizing.
<img width="1919" height="1080" alt="image" src="https://github.com/user-attachments/assets/925f672f-0310-4171-a9a9-7a8935afb7ea" />

---

## 🛠 Features & Modules

### 1. Bloatware Nuke
Removes pre-installed Windows apps (Xbox, Teams, Bing Weather, etc.) and offers to uninstall OneDrive to free up system resources and declutter your Start menu.

### 2. Privacy Hardener
Disables telemetry, advertising IDs, activity feeds, and Bing search in the Start menu. It also disables background services that track usage data.

### 3. Dev Machine Setup
Automates the installation of essential development tools using **Microsoft Winget**. 
*Default tools: Git, Node.js (LTS), Python 3, VS Code, and Docker Desktop.*

### 4. Startup Speed Booster
Scans registry run keys and scheduled tasks for third-party apps that launch at startup, allowing you to disable them for faster boot times.

### 5. Junk Cleaner
Deletes temporary files, system logs, and runs the Windows Disk Cleanup (`cleanmgr`) and DISM component cleanup to reclaim disk space.

### 6. Gaming Mode Toggle
*   **ON:** Activates the "High Performance" power plan and temporarily pauses Windows Defender real-time monitoring.
*   **OFF:** Reverts to the "Balanced" power plan and resumes Defender protection.

### 7. Network Reset
Flushes the DNS cache and resets the Winsock/TCP/IP stacks. Useful for fixing connectivity issues.

### 8. Safe Uninstall
A powerful alternative to the standard "Add/Remove Programs". It scans all registry hives (64-bit, 32-bit, and User) and lets you search or browse a numbered list of all installed software to uninstall.

### 9. Work-From-Home Focus Mode
Blocks distracting websites (YouTube, Reddit, Social Media) by modifying the `hosts` file. You can set a timer in hours; the script uses a **Windows Scheduled Task** to automatically unblock the sites once the time expires.

### 10. Visual Performance Tweaks
Optimizes the Windows UI by disabling animations, transparency effects, and Aero features. Recommended for older hardware or maximum responsiveness.

### 11. Browser Maintenance
Clears the cache and temporary data for Microsoft Edge, Google Chrome, and Mozilla Firefox.

### 12. System Integrity Check
Runs `sfc /scannow` and `DISM Health Checks` to find and repair corrupted Windows system files.

### 13. Update All (Winget)
A single command to update every application installed on your system that is supported by the Windows Package Manager.

### 14. Context Menu Cleanup
Removes cluttered or redundant items from the Windows right-click menu, such as "Share" and "Open with Code".

---

## ⚙️ Customization (`config.json`)

You can customize the script without editing the code! Open `config.json` to:
*   Add/remove apps from the **Bloatware** list.
*   Change which apps are installed in **Dev Setup**.
*   Add your own custom **Registry Tweaks**.

## 🛡 Safety First
*   **System Restore:** Always creates a restore point before making changes.
*   **Registry Backups:** Every registry change is backed up to `C:\WinOptimizer\backups` as a `.reg` file.
*   **Logs:** Detailed logs are saved to `C:\WinOptimizer\logs`.
*   **Dry Run Mode:** You can run the script with the `-DryRun` flag to see what it *would* do without making any changes.

---
Created by **NishantJLU**
