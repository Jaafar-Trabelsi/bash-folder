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

### Example: Disk Usage Monitor
```bash
cd folder-disk_usage-bash
chmod +x disk_usage.sh
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

---

## 🔧 Requirements

- **Bash** (version 4.0+ recommended)
- **Linux/macOS** environment
- Basic command-line knowledge
- Standard Unix tools (rsync, awk, df - all usually pre-installed)

All scripts use standard Unix tools that come pre-installed on most systems.

---

## 🤖 Script Synergy

These scripts work well together:

1. **Monitor → Backup:** Use disk usage script before backups to ensure enough space
2. **Organize → Backup:** Keep files organized before backing them up
3. **Schedule All:** Use cron to schedule all three scripts for full automation

Example automation workflow:
```bash
# Daily cron job example
0 2 * * * /path/to/disk_usage.sh          # Check disk space at 2 AM
0 3 * * * /path/to/organizer.sh ~/Downloads # Organize downloads at 3 AM  
0 4 * * * /path/to/backup.sh              # Run backup at 4 AM
```

---

## 🗺️ Future Projects

Scripts I plan to add:
- System monitoring dashboard
- Automated software installation/updates
- Log file analysis and rotation
- Network utilities (ping sweeper, port scanner)
- Development environment setup
- File integrity checker
- Process monitoring and management

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



