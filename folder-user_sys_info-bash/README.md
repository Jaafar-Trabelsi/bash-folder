# 🖥️ System Information Script

![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20WSL-lightgrey)
![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Simple](https://img.shields.io/badge/Simple-Beginner%20Friendly-green)

A lightweight Bash script that displays essential system information in a clean, easy-to-read format. Perfect for beginners learning shell scripting or anyone needing a quick system overview.

---

## ✨ Features

- **Instant System Snapshot**: Get key system info with one command
- **Clean Output**: Formatted display with relevant sections
- **No Dependencies**: Uses built-in system commands
- **Beginner-Friendly**: Simple, well-commented code
- **Cross-Platform**: Works on Linux, macOS, and WSL

## 📊 Information Displayed

| Section | Command | What It Shows |
|---------|---------|---------------|
| **User Info** | `whoami` | Current logged-in user |
| **System Identity** | `hostname` | Computer name |
| **Operating System** | `uname -s -r` | OS name and kernel version |
| **System Uptime** | `uptime -p` | How long since last reboot |
| **CPU Information** | `nproc` | Number of CPU cores |
| **Network Info** | `hostname -I` | All IP addresses |
| **Date & Time** | `date` | Current system date/time |
| **Memory Usage** | `free -h` | RAM usage (condensed view) |
| **Disk Space** | `df -h` | Storage usage (main drives only) |

## Quick Start

### Method 1: One-Line Command
Copy and paste this directly into your terminal:
```bash
bash -c 'echo "My Computer Info:"; echo "-----------------"; echo "User: $(whoami)"; echo "Computer: $(hostname)"; echo "OS: $(uname -s -r)"; echo "Up for: $(uptime -p)"; echo "CPU Cores: $(nproc)"; echo "IP Address: $(hostname -I)"; echo "Date: $(date)"; echo ""; echo "Memory:"; free -h | head -2; echo ""; echo "Disk:"; df -h | head -5'
```

### Method 2: Save as Script
1. **Create the script**:
   ```bash
   nano sysinfo.sh
   ```

2. **Copy this code**:
   ```bash
   #!/bin/bash
   
   # Super Simple System Info (with optional improvements)
   echo "My Computer Info:"
   echo "-----------------"
   echo "User: $(whoami)"
   echo "Computer: $(hostname)"
   echo "OS: $(uname -s -r)"
   echo "Up for: $(uptime -p)"
   echo "CPU Cores: $(nproc)"  # ⚡ Optional improvement
   echo "IP Address: $(hostname -I)"  # ⚡ Optional improvement
   echo "Date: $(date)"
   echo ""
   echo "Memory:"
   free -h | head -2
   echo ""
   echo "Disk:"
   df -h | head -5
   ```

3. **Make it executable**:
   ```bash
   chmod +x sysinfo.sh
   ```

4. **Run it**:
   ```bash
   ./sysinfo.sh
   ```

## 📋 Sample Output

```
My Computer Info:
-----------------
User: alex
Computer: workstation
OS: Linux 5.15.0-91-generic
Up for: up 2 hours, 15 minutes
CPU Cores: 8
IP Address: 192.168.1.105 172.17.0.1
Date: Wed Jan 8 14:30:00 UTC 2025

Memory:
              total        used        free
Mem:           15Gi       5.2Gi       9.8Gi

Disk:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1       234G   45G  178G  20% /
/dev/sdb1       916G  123G  747G  15% /home
tmpfs           7.8G     0  7.8G   0% /dev/shm
```

## 🔧 Understanding the Components

### Why Multiple IPs?
If you see multiple IP addresses (e.g., `192.168.1.105 172.17.0.1`), here's what they typically mean:
- **`192.168.x.x`** - Your main network connection (WiFi/Ethernet)
- **`172.17.x.x`** - Docker bridge network (if Docker is installed)
- **`192.168.122.1`** - VirtualBox/KVM network (if virtualization software is installed)

### Understanding `head -2` and `head -5`
- `head -2` shows only the **first 2 lines** of memory output (summary instead of details)
- `head -5` shows only the **first 5 lines** of disk output (main drives instead of all partitions)

## 🎯 Common Use Cases

### 1. **Quick System Check**
```bash
# Before installing new software
./sysinfo.sh
```

### 2. **Troubleshooting**
```bash
# When debugging network or performance issues
./sysinfo.sh > system_status.txt
```

### 3. **Remote Server Monitoring**
```bash
# Check remote server via SSH
ssh user@server "./sysinfo.sh"
```

## 🛠️ Troubleshooting

### Commands Not Found?
Some systems might need:
```bash
# For Debian/Ubuntu:
sudo apt update
sudo apt install procps coreutils

# Alternative for missing commands:
echo "IP Address: $(ip addr show | grep "inet " | grep -v "127.0.0.1" | awk '{print $2}' | head -1)"
```

### Script Permissions Error?
```bash
chmod +x sysinfo.sh  # Make executable
bash sysinfo.sh      # Or run with bash directly
```

## 📝 Customization Ideas

### Add Weather Info:
```bash
echo "Weather:"
curl -s "wttr.in?format=3"
```

### Add Storage Details:
```bash
echo "Home Directory:"
du -sh ~
```

### Add System Load:
```bash
echo "System Load:"
uptime | awk -F'load average:' '{print $2}'
```

## ⚠️ Notes & Limitations

- **macOS Users**: Some commands (`free`, `hostname -I`) may work differently
- **Windows Users**: Use WSL, Git Bash, or Cygwin for best results
- **Security**: No sensitive data is displayed (passwords, config files, etc.)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Built with standard Unix/Linux commands
- Inspired by common system administration tools
- Thanks to the open-source community for Bash resources

---
