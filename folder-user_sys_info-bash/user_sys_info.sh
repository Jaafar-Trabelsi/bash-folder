#!/bin/bash

echo "My Computer Info:"
echo "-----------------"
echo "User: $(whoami)"
echo "Computer: $(hostname)"
echo "OS: $(uname -s -r)"
echo "Up for: $(uptime -p)"
echo "CPU Cores: $(nproc)"
echo "IP Address: $(hostname -I)"
echo "Date: $(date)"
echo ""
echo "Memory:"
free -h | head -2
echo ""
echo "Disk:"
df -h | head -5
