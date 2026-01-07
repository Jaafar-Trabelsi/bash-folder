# Update the README with the new system info script and password checker

Perfect! Let's add the two new projects to your main README.md. Here's the updated version:

```markdown
# Bash Script Projects Collection 

A personal collection of practical Bash scripts I've created to automate tasks, organize files, and improve workflow efficiency. Each project is standalone, well-documented, and ready to use.

---

## 📂 Projects

### 1. [folder-backup-bash](./folder-backup-bash/)
A simple and efficient backup script using `rsync` that creates timestamped copies of important directories with proper error handling.

**Features:**
- Date-based backup organization (YYYY-MM-DD format)
- Rsync for efficient incremental backups
- Configurable source and destination paths
- Clear success/failure reporting

### 2. [folder-organizer-bash](./folder-organizer-bash/)
An automatic file organizer that sorts files into categorized folders (Documents, Images, Scripts, Others) based on file extensions.

**Features:**
- Automatic folder creation
- Four file type categories
- Safe to run multiple times
- Beginner-friendly with clear documentation

### 3. [folder-disk_usage-bash](./folder-disk_usage-bash/)
A disk space monitoring script that checks filesystem usage, logs results, and alerts when usage exceeds a configurable threshold.

**Features:**
- Real-time disk usage monitoring across all filesystems
- Configurable warning thresholds (default: 80%)
- Detailed logging with timestamps
- Automated alerts for high usage
- Lightweight with no dependencies

### 4. [folder-pswd_checker-bash](./folder-pswd_checker-bash/)
A password strength checker that evaluates passwords based on multiple security criteria with silent input and immediate feedback.

**Features:**
- Silent password input (characters not displayed)
- Multi-factor scoring system
- Clear strength ratings (Very Weak → Strong)
- Lightweight with no dependencies
- Educational with well-commented code

**Scoring Criteria:**
- Length ≥ 8 characters (+2 points)
- Contains lowercase letters (+1 point)
- Contains uppercase letters (+1 point)
- Contains numbers (+1 point)
- Contains special characters (+2 points)
- **Maximum Score: 7 points**

### 5. [folder-user_sys_info-bash](./folder-user_sys_info-bash/)
A system information script that displays essential computer details in a clean, easy-to-read format.

**Features:**
- Instant system snapshot with one command
- Clean, formatted output
- No dependencies beyond built-in commands
- Beginner-friendly code
- Cross-platform compatibility (Linux, macOS, WSL)

**Information Displayed:**
- User identity and computer name
- Operating system and kernel version
- System uptime and CPU cores
- IP addresses and network info
- Memory and disk usage
- Current date and time

---

## Why Bash?

I create Bash scripts because they're:
- **Portable:** Run on virtually any Unix-like system
- **Lightweight:** No dependencies or heavy runtime needed
- **Transparent:** Easy to understand and modify
- **Powerful:** Can automate complex system tasks
- **Educational:** Great for learning system fundamentals

---

## Getting Started

### Clone this repository:
```bash
git clone https://github.com/Jaafar-Trabelsi/bash-folder.git
cd bash-folder
```

### Make any script executable:
```bash
chmod +x folder-name/script-name.sh
```

### Run a script:
```bash
./folder-name/script-name.sh
```

### Examples:
```bash
# Check system information
cd folder-user_sys_info-bash
./user_sys_info.sh

# Test password strength
cd folder-pswd_checker-bash
./pswd_checker.sh

# Monitor disk usage
cd folder-disk_usage-bash
./disk_usage.sh
# Check log file: cat ~/Documents/disk_usage.txt
```

---

## 📝 Script Development Philosophy

Each script follows these principles:
1. **Self-contained:** No external dependencies beyond coreutils
2. **Well-documented:** Clear comments and README files
3. **Configurable:** Settings at the top of each script
4. **Safe:** Includes error checking and validation
5. **Practical:** Solves real-world problems

---

## 🛠️ Common Bash Features Used

These scripts demonstrate various Bash programming concepts:
- **Command-line arguments:** `$1`, `$2`, `shift`
- **Conditional statements:** `if`, `case`, `test`
- **Loops:** `for`, `while`, `until`
- **Text processing:** `awk`, `sed`, `grep`
- **System commands:** `df`, `rsync`, `find`, `mkdir`
- **Error handling:** Exit codes, `trap`, `set -e`
- **File operations:** Permissions, redirection, piping
- **String manipulation:** Variable expansion, pattern matching
- **Date and time:** `date` command formatting
- **Regular expressions:** Pattern matching for validation
- **Secure input:** Silent password prompts with `read -sp`

---

## 🔧 Requirements

- **Bash** (version 4.0+ recommended)
- **Linux/macOS** environment
- Basic command-line knowledge
- Standard Unix tools (rsync, awk, df - all usually pre-installed)

All scripts use standard Unix tools that come pre-installed on most systems.

---

## 🏗️ Project Structure

```
bash-folder/
├── README.md                          # This main documentation
├── folder-backup-bash/
│   ├── README.md
│   └── backup.sh
├── folder-organizer-bash/
│   ├── README.md
│   └── organizer.sh
├── folder-disk_usage-bash/
│   ├── README.md
│   └── disk_usage.sh
├── folder-pswd_checker-bash/
│   ├── README.md
│   └── pswd_checker.sh
└── folder-user_sys_info-bash/
    ├── README.md
    └── user_sys_info.sh
```

Each project folder contains:
- **README.md**: Detailed documentation and usage instructions
- **script.sh**: The main executable Bash script

---

## 🤖 Script Synergy

These scripts work well together:

### Security & System Management:
1. **Password Check → System Info**: Check password strength on new systems you're configuring
2. **System Info → Disk Usage**: Get full system overview before disk maintenance
3. **Disk Usage → Backup**: Monitor space before running backups

### Daily Workflow:
```bash
# Morning system check
./folder-user_sys_info-bash/user_sys_info.sh
./folder-disk_usage-bash/disk_usage.sh

# File organization
./folder-organizer-bash/organizer.sh ~/Downloads

# Evening backup
./folder-backup-bash/backup.sh
```

### Automation Example:
```bash
# Daily cron job automation
0 9 * * * /path/to/folder-user_sys_info-bash/user_sys_info.sh >> ~/system_log.txt  # Morning system check
0 18 * * * /path/to/folder-organizer-bash/organizer.sh ~/Downloads                # Organize downloads
0 20 * * * /path/to/folder-disk_usage-bash/disk_usage.sh                          # Check disk space
0 22 * * * /path/to/folder-backup-bash/backup.sh                                  # Nightly backup
```

---

## 🗺️ Future Projects

Scripts I plan to add:
- **System monitoring dashboard** - Real-time system metrics display
- **Automated software installation/updates** - Package management automation
- **Log file analysis and rotation** - Log management utilities
- **Network utilities** - Ping sweeper, port scanner, connection monitor
- **Development environment setup** - One-click dev environment configuration
- **File integrity checker** - Checksum verification and monitoring
- **Process monitoring and management** - System process oversight
- **Automated report generator** - System health reports
- **SSH connection manager** - Simplify remote server management
- **System cleanup utility** - Remove temporary files and free space

---

## 🎯 Learning Path

These scripts are organized from simple to more complex:

1. **Beginner Level** (Start here if new to Bash):
   - `folder-user_sys_info-bash` - Basic system commands
   - `folder-pswd_checker-bash` - Input handling and conditions

2. **Intermediate Level**:
   - `folder-organizer-bash` - File operations and loops
   - `folder-disk_usage-bash` - System monitoring and logging

3. **Advanced Level**:
   - `folder-backup-bash` - Advanced file operations and error handling

---

## 🤝 Contributing

While this is primarily a personal collection, suggestions and improvements are welcome! Feel free to:
- Report bugs or issues
- Suggest new script ideas
- Share your own Bash scripting tips
- Fork and adapt for your own needs

---

## 🎓 About Me

I'm Jaafar Trabelsi, exploring system automation through Bash scripting. These projects represent my journey in learning how to make computers work more efficiently through code.

> "The most effective way to do it, is to do it." — Amelia Earhart

---

## ⚖️ License

All scripts are provided as-is for educational and personal use. Feel free to modify and adapt them for your own needs.

---

## 📊 Project Status

![GitHub last commit](https://img.shields.io/github/last-commit/Jaafar-Trabelsi/bash-folder)
![GitHub repo size](https://img.shields.io/github/repo-size/Jaafar-Trabelsi/bash-folder)
![GitHub](https://img.shields.io/github/license/Jaafar-Trabelsi/bash-folder)



