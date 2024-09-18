# Advanced File Management and Automation System

## Project Overview
This project demonstrates advanced command line skills by creating an automated file management system, custom environment configurations, and system monitoring scripts. The project automates tasks like file organization, system backups, and performance monitoring, which are essential for managing a system efficiently.

## Features
- **Automated File Organization**: A script that sorts files into directories based on file type (e.g., .txt, .jpg, .sh).
- **Backup System**: Automatically archives important directories into timestamped tar.gz backups.
- **Custom Environment Configuration**: Includes useful aliases (e.g., `ll` for `ls -la`) and environment variables to improve productivity.
- **System Monitoring Script**: Captures and logs CPU usage, disk usage, and memory stats. Cross-platform compatibility for Linux and Windows systems.

## Getting Started

### Prerequisites
- **Git Bash** (for Windows users) or **Bash Shell** (for Unix-based systems)
- Ensure you have basic commands like `tar`, `chmod`, and `wmic` installed and available.

### Installation

1. **Clone or Download the Repository**:
   ```bash
   git clone https://github.com/yourusername/your-repository-name.git
   cd your-repository-name
   ```
2.  **Make the Scripts Executable: Run the following command to ensure all scripts are executable**:
   ```bash
   chmod +x organize_files.sh backup.sh monitor_system.sh
   ```

## Usage 

### File Organization Script
Organize files by type within a specified directory:
```bash
./organize_files.sh <directory_path>
```
Example:
Create a timestamped backup of a specified directory:
```bash
./organize_files.sh test_dir
```

### Backup Script
```bash
./backup.sh <directory_path>
```
Example:
```bash
./backup.sh test_dir
```
The backup will be saved as backup_<timestamp>.tar.gz.

### System Monitoring Script
Generate a system monitoring report and save it to a log file:
```bash
./monitor_system.sh
```
The report will be saved as system_monitor_<timestamp>.log.

## Example Outputs

### Backup Example:
After running backup.sh, a file like backup_20240918_181023.tar.gz will be created.

### System Monitoring Example:
After running monitor_system.sh, the log file system_monitor_20240918_181024.log will contain:
```bash
System Monitoring Report
=========================
CPU Usage:
LoadPercentage 12

Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
C:/Users/...    250G  150G   100G  60% /c

Memory Usage:
FreePhysicalMemory=2097152
TotalVisibleMemorySize=4194304
```
## Dependencies
- Git Bash (for Windows users) or Bash Shell (for Unix-based systems)
- System commands:
   - df (disk usage)
   - wmic (CPU and memory usage on Windows)
   - tar (for backups)
 
## Custom Aliases and Environment Variables
In the bash profile, the following aliases and environment variables are added:

- Alias ll for ls -la
- Alias p for pwd
- Custom prompt PS1=">> "
Activate the changes with:
```bash
source ~/.bash_profile
```

## Potential Future Improvements
- Add support for file encryption during backups.
- Add more customizable file organization rules (based on file extensions).
- Implement error logging and notifications for system monitoring.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Contributions
Contributions are welcome! Feel free to open a pull request or report issues.

### Key Improvements:
- **Detailed Usage Section**: Clear instructions on how to use each script.
- **Example Outputs**: Demonstrates expected output formats.
- **Future Improvements**: Ideas for expansion, which show thoughtfulness and foresight.
- **License and Contributions**: Welcomes others to contribute and defines licensing.

### What to Do Next:
- Add a `LICENSE` file to your repository (MIT License is recommended).
- Include sample files (if needed) to test the scripts, like a `test_dir` folder with various files.
- Consider adding screenshots or logs to illustrate the process in your GitHub repository.
