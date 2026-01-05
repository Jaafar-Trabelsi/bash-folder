# File Organizer Bash Script

A beginner-friendly Bash script that automatically organizes files in a directory into folders based on their file type. Perfect for keeping your projects, downloads, or any folder neat and structured.

---

## 📌 Features

- Organizes files into four categories:
  - **Images:** jpg, png, jpeg, gif
  - **Documents:** pdf, txt, docx
  - **Scripts:** sh
  - **Others:** everything else
- Creates folders automatically if they don’t exist (`-p` option)
- Handles missing or invalid arguments safely
- Safe to run multiple times without breaking existing structure

---

## 💻 Usage

### 1️⃣ Make script executable
chmod +x organizer.sh

### 2️⃣ Run the script
./organizer.sh <directory>
  - <directory> is the folder you want to organize.

*Example:
./organizer.sh ~/Desktop/test_folder

### 3️⃣ Check the result
tree <directory>

## Example :
```bash
Before running:
tree test_folder

test_folder
├── a.txt
├── b.jpg
├── c.sh
└── random.bin

After running:
tree test_folder

test_folder
├── Documents
│   └── a.txt
├── Images
│   └── b.jpg
├── Scripts
│   └── c.sh
└── Others
    └── random.bin 
```
## How it works :

$0 → Script name

$1 → First argument (directory to organize)

-z → Checks if a string is empty

-p → Ensures mkdir creates parent directories if missing

for file in "$1"/* → Loops through all files in the folder

case "$file" in … esac → Sorts files by file extension and moves them

## Requirements :

" Linux or macOS (any Bash-compatible system) "

" Bash installed (usually pre-installed) "

" Optional: tree command for testing folder structure "

" sudo apt install tree   # on Ubuntu / Debian "

## Notes :

" Always provide a folder as the first argument "

" Only organizes files in the top-level directory, not subfolders "

" Safe to run multiple times; will not break existing folders "

# 📂 Project Structure
```bash
file-organizer-bash/
├── organizer.sh   # Bash script
└── README.md      # Project documentation
```


