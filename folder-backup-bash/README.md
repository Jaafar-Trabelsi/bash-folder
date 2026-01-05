# Backup Bash Script

A simple and efficient Bash script for creating automated backups of your important directories using `rsync`. Creates timestamped backups that are efficient and reliable.

---

## 📌 Features

- **Efficient Backups:** Uses `rsync` for smart, incremental backups (only copies changed files)
- **Date-based Organization:** Creates timestamped backup folders (YYYY-MM-DD format)
- **Error Handling:** Provides clear success/failure messages with exit codes
- **Configurable:** Easy to modify source and destination directories
- **Fast Subsequent Runs:** Only transfers changed files after the initial backup

---

## 🛠️ Configuration

Edit the following variables at the top of `backup.sh` to match your needs:

```bash
# -------- CONFIG --------
SOURCE="$HOME/Documents"      # Directory to backup
BACKUP_DIR="$HOME/Backups"    # Where to store backups
DATE=$(date +%Y-%m-%d)        # Date format for folder names
# ------------------------
```

## 💻 Usage

### 1️⃣ Make the script executable
```bash
chmod +x backup.sh
```

### 2️⃣ Run the script
```bash
./backup.sh
```

### 3️⃣ (Optional) Schedule automatic backups with cron
Add to your crontab to run daily at 2 AM:
```bash
0 2 * * * /path/to/backup.sh
```

## 📁 Directory Structure Example

After running backups for several days:
```bash
Backups/
├── 2024-01-01/
├── 2024-01-02/
├── 2024-01-03/
├── 2024-01-04/
└── 2024-01-05/
```

Each dated folder contains an exact copy of your `SOURCE` directory at that point in time.

## 🔧 How It Works

1. **Creates dated folder:** `mkdir -p "$BACKUP_DIR/$DATE"`
2. **Performs rsync backup:** `rsync -avh --delete "$SOURCE/" "$DEST/"`
   - `-a`: Archive mode (preserves permissions, timestamps, etc.)
   - `-v`: Verbose output
   - `-h`: Human-readable file sizes
   - `--delete`: Removes files in destination that no longer exist in source
3. **Checks exit status:** Verifies rsync completed successfully

## 📋 Exit Codes

- **0**: Backup completed successfully
- **1**: Backup failed (rsync error)
- **Other**: System/script errors

## ⚠️ Notes & Best Practices

1. **First Run:** The initial backup will take longer as it copies all files
2. **Subsequent Runs:** Much faster (only copies changed/updated files)
3. **Disk Space:** Monitor your `BACKUP_DIR` as it will grow over time
4. **Testing:** Test with a small directory first
5. **Permissions:** Script should have read access to `SOURCE` and write access to `BACKUP_DIR`

## 🔄 Manual Cleanup

Since the script doesn't automatically delete old backups, you should periodically clean up:

```bash
# Delete backups older than 30 days
find "$BACKUP_DIR" -maxdepth 1 -type d -name "20*" -mtime +30 -exec rm -rf {} \;

# Or keep only the last 7 days
find "$BACKUP_DIR" -maxdepth 1 -type d -name "20*" -mtime +7 -exec rm -rf {} \;
```

## 📂 Project Structure
```bash
folder-backup-bash/
├── backup.sh      # Main backup script
└── README.md      # This documentation
```

## 📚 Dependencies

- **Bash** (pre-installed on most Linux/macOS systems)
- **rsync** (usually pre-installed, install with `sudo apt install rsync` if missing)
- **cron** (optional, for scheduling)

## 🎯 Example Use Cases

- **Personal documents:** Backup `~/Documents` daily
- **Project files:** Backup your development projects
- **Configuration files:** Backup dotfiles from `~/.config`
- **Media collections:** Backup photos, music, or videos

## 🤝 Extending the Script

Common modifications include:
- Adding automatic cleanup (see Manual Cleanup section above)
- Multiple source directories
- Compression of backups
- Remote backup locations (SSH, S3, etc.)
- Email notifications on success/failure
- Logging to a file

## 📊 Performance Tips

1. **Exclude unnecessary files:** Add `--exclude` patterns to skip temporary files
2. **Use `--progress`:** For visual progress during large backups
3. **Network backups:** Use `-z` flag for compression when backing up over network

---


