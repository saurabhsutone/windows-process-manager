# Windows Process Management Tool - Usage Guide

## Overview

Windows Process Management Tool is a lightweight Batch Script utility designed for:

- System Administrators
- IT Support Engineers
- Helpdesk Teams
- Desktop Support Engineers

The tool allows administrators to quickly view and terminate common application processes from a simple menu-driven interface.

---

# Running the Tool

## Method 1 - Double Click

1. Download the repository.
2. Open the folder.
3. Double-click:

ProcessManager.bat

The application menu will open.

---

## Method 2 - Run as Administrator

Recommended for process termination.

1. Right-click ProcessManager.bat
2. Select:

Run as Administrator

This ensures all process termination commands work correctly.

---

# Main Menu

When launched, the following menu appears:

======================================
PROCESS MANAGEMENT TOOL
======================================

1. Show Chrome Instances
2. Kill All Chrome Instances
3. Show Edge Instances
4. Kill All Edge Instances
5. Show Firefox Instances
6. Kill All Firefox Instances
7. Show All Running Processes
8. Kill Process by Name
9. Exit

---

# Option 1 - Show Chrome Instances

Displays all running Chrome processes.

Example:

chrome.exe 12456
chrome.exe 12457
chrome.exe 12458

Useful for:

- Browser troubleshooting
- Memory investigations
- Session cleanup

---

# Option 2 - Kill All Chrome Instances

Terminates every Chrome process.

Command used:

taskkill /F /IM chrome.exe

Use Cases:

- Browser freeze
- High memory usage
- Browser reset

---

# Option 3 - Show Edge Instances

Displays all running Microsoft Edge processes.

Command used:

tasklist /FI "IMAGENAME eq msedge.exe"

---

# Option 4 - Kill All Edge Instances

Terminates all Edge processes.

Command used:

taskkill /F /IM msedge.exe

---

# Option 5 - Show Firefox Instances

Displays all Firefox processes.

Command used:

tasklist /FI "IMAGENAME eq firefox.exe"

---

# Option 6 - Kill All Firefox Instances

Terminates all Firefox processes.

Command used:

taskkill /F /IM firefox.exe

---

# Option 7 - Show All Running Processes

Displays every running process on the machine.

Command used:

tasklist

Useful for:

- Troubleshooting
- Resource monitoring
- Identifying unknown processes

Example:

explorer.exe
chrome.exe
teams.exe
outlook.exe

---

# Option 8 - Kill Process by Name

Allows termination of any process.

Example Input:

notepad.exe

Command executed:

taskkill /F /IM notepad.exe

Another Example:

Teams.exe

Command executed:

taskkill /F /IM Teams.exe

---

# Option 9 - Exit

Closes the application.

---

# Common Troubleshooting

## Access Denied

Cause:

Insufficient permissions.

Resolution:

Run the script as Administrator.

---

## Process Not Found

Cause:

The process is not currently running.

Example:

ERROR: The process "chrome.exe" not found.

Resolution:

Verify the application is running before attempting termination.

---

## Antivirus Warning

Some endpoint security products may flag scripts that use:

- taskkill
- tasklist

This is expected behavior.

---

# Security Considerations

The script uses native Windows commands only.

Commands Used:

- tasklist
- taskkill
- cls
- pause
- echo

No internet access is required.

No data is collected.

No information is transmitted externally.

---

# Best Practices

✔ Run as Administrator

✔ Verify process names before terminating

✔ Save work before killing browser processes

✔ Test in non-production environments first

✖ Do not terminate critical Windows processes

Examples:

- winlogon.exe
- lsass.exe
- csrss.exe
- services.exe

Terminating these may crash the system.

---

# Future Enhancements

Planned Features:

- Process PID View
- Memory Usage Reporting
- Service Management
- DNS Tools
- Network Diagnostics
- Event Log Collection
- CSV Export
- PowerShell GUI Version

---

# Version History

## v1.0

Initial Release

Features:

- Browser Process Monitoring
- Browser Process Termination
- Custom Process Termination
- Running Process Viewer

