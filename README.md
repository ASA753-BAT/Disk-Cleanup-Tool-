# 💽 Disk Cleanup Tool (Windows)

This project is a simple **Disk Cleanup Tool** designed for Windows systems. It uses a batch script (`.bat`) to **fully wipe and reformat** the selected disk using `diskpart`.

> ⚠️ **WARNING:** This tool will IRREVERSIBLY delete all data on the selected disk. Use with caution!

---

## 🚀 Features

- Lists all connected physical disks (model, size, and index)
- Prompts user to choose the disk number to clean
- Asks for confirmation before proceeding
- Uses `diskpart` to:
  - Wipe the disk (`clean`)
  - Create a new primary partition
  - Format it as NTFS (quick format)
  - Assign a drive letter
- Displays a completion message once done

## 📂 Example Output
  
https://raw.githubusercontent.com/ASA753-BAT/-mage/main/disk.jpeg




---

## 🖥️ How to Use

1. Save the file as `disk-clean.bat`.
2. **Right-click the file and choose "Run as Administrator"**.
3. Follow the on-screen prompts carefully.

---

## 🔐 Requirements

- Windows 10 / 11
- Administrator privileges
- `diskpart` (comes pre-installed with Windows)

---

## ⚠️ Warnings

- Selecting the wrong disk will cause permanent data loss.
- Never use this on system drives or active disks.
- Always back up your data before using this tool.

---

## 🛡️ Safety Tips

- Test the script on virtual machines or external test drives before using it on real data.
- Double-check disk information displayed by `wmic diskdrive` before proceeding.
- Consider modifying the script to only show external or removable drives for added safety.

---
## 📄 License

This project is licensed under the MIT License. You are free to use, distribute, and modify it as needed.

---

## ✍️ Developed by

[@asa753](https://github.com/ASA753-BAT)

