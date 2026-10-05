# Project Name

A brief, one-sentence description of what your project or tool does goes right here.

## 🚀 Getting Started

Follow these quick instructions to verify the setup environment and run the installation script.

### 📋 Prerequisites

This project requires a Windows environment capable of running batch files (`.bat`). 

### 🔍 Verifying the Setup File
Before running the installer, ensure you are in the correct directory (e.g., `Documents`) and verify that `setup.bat` is present by running:

```cmd
dir setup.bat
```
*If you receive a `File Not Found` error, double-check your current folder path using `cd`.*

---

## 💻 Installation & Usage

Once verified, you can execute the setup script directly from the Windows Command Prompt:

1. Open **Command Prompt** (CMD).
2. Navigate to your folder:
   ```cmd
   cd /path/to/your/files
   ```
3. Run the setup script:
   ```cmd
   setup.bat
   ```

> 💡 **Note:** If the script requires administrative privileges, make sure to open Command Prompt by right-clicking it and selecting **"Run as administrator"**.

---

## 🛠️ Troubleshooting

* **File Not Found:** Ensure you haven't renamed the file or saved it as `setup.bat.txt`. You can list all batch files using `dir *.bat`.
* **Permission Denied:** Close CMD, reopen it as an Administrator, and try running the command again.
