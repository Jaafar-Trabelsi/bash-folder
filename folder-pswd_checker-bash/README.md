# 🔐 Password Strength Checker

![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Linux%20%7C%20macOS%20%7C%20WSL-lightgrey)

A lightweight Bash script that evaluates password strength based on multiple security criteria. Perfect for learning about shell scripting and password security fundamentals.

---

## ✨ Features

- **Silent Password Input**: Password characters are not displayed on screen
- **Multi-factor Scoring**: Evaluates passwords based on 5 key security criteria
- **Immediate Feedback**: Provides clear strength rating (Very Weak → Strong)
- **Lightweight**: No dependencies, pure Bash implementation
- **Educational**: Clear code with comments for learning purposes

## 📊 Scoring Criteria

The script evaluates passwords based on:

| Criteria | Points | Description |
|----------|--------|-------------|
| Length ≥ 8 | +2 | Optimal password length |
| Length 6-7 | +1 | Minimum acceptable length |
| Lowercase | +1 | Contains a-z |
| Uppercase | +1 | Contains A-Z |
| Numbers | +1 | Contains 0-9 |
| Special Chars | +2 | Contains !@#$%^&*, etc. |

**Maximum Score**: 7 points

## 🏆 Strength Ratings

| Score Range | Rating | Description |
|-------------|--------|-------------|
| 0-2 | 🔴 Very Weak | Easily guessable |
| 3-4 | 🟡 Weak | Below average security |
| 5-6 | 🟠 Moderate | Reasonable for non-critical accounts |
| 7 | 🟢 Strong | Good security for important accounts |

## Quick Start

### Prerequisites
- Bash shell (Linux, macOS, or Windows with WSL/Git Bash)

# Make the script executable
chmod +x pswd_checker.sh
```

### Usage
```bash
# Run the script
./pswd_checker.sh

# Sample output:
Enter your password: 
Password Strength: Moderate
```

## 🧪 Testing Examples

Test these passwords to see different strength ratings:

```bash
"12345"           # Very Weak (2 points)
"password123"     # Weak (4 points)
"Password123"     # Moderate (5 points)
"SecureP@ss123"   # Strong (7 points)
```

## 🛠️ How It Works

The script uses:
- `read -sp` for silent password input
- `${#variable}` to get string length
- `=~` operator with regex patterns for character validation
- Conditional scoring system with `if-elif-else` statements

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## ⚠️ Security Disclaimer

**Important**: This tool is for educational purposes only. It provides basic password strength estimation but doesn't guarantee absolute security. Always follow best practices:
- Use unique passwords for different accounts
- Enable two-factor authentication where available
- Consider using a reputable password manager
- Regularly update important passwords

## 🙏 Acknowledgments

- Inspired by common password strength meters
- Thanks to the open-source community for Bash scripting resources
- Regex patterns based on common password validation standards

---

