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

---

## 🎯 Why Bash?

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
- Command-line arguments handling (`$1`, `$2`)
- Conditional statements (`if`, `case`)
- Loops (`for`, `while`)
- Functions and modularity
- Exit codes and error handling
- File operations and permissions
- Date and string manipulation

---

## 🔧 Requirements

- **Bash** (version 4.0+ recommended)
- **Linux/macOS** environment
- Basic command-line knowledge

All scripts use standard Unix tools that come pre-installed on most systems.

---

## 📚 Learning Resources

If you're new to Bash scripting, check out:
- [Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/)
- [Google's Shell Style Guide](https://google.github.io/styleguide/shellguide.html)
- [ShellCheck](https://www.shellcheck.net/) - For linting and debugging

---

## 🗺️ Future Projects

Scripts I plan to add:
- System monitoring and alerts
- Automated software installation
- Log file analysis and rotation
- Network utilities
- Development environment setup

---

## 🤝 Contributing

While this is primarily a personal collection, suggestions and improvements are welcome! Feel free to:
- Report bugs or issues
- Suggest new script ideas
- Share your own Bash scripting tips

---

## 📊 Repository Structure
```
bash-folder/
├── folder-backup-bash/
│   ├── backup.sh
│   └── README.md
├── folder-organizer-bash/
│   ├── organizer.sh
│   ├── README.md
│   └── test_folder/
└── README.md  (this file)
```

---

## 🎓 About Me

I'm Jaafar Trabelsi, exploring system automation through Bash scripting. These projects represent my journey in learning how to make computers work more efficiently through code.

> "The most effective way to do it, is to do it." — Amelia Earhart

---

## ⚖️ License

All scripts are provided as-is for educational and personal use. Feel free to modify and adapt them for your own needs.

---

