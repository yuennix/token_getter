# WEYN - Facebook Bulk Token Generator
## Termux Installation & Usage Guide

### 📱 Installation on Termux

1. **Update and Install Required Packages**
```bash
pkg update && pkg upgrade
pkg install python git
pip install requests
```

2. **Download the Script**
```bash
git clone <your-repo-url>
cd <repo-folder>
```

3. **Make Script Executable (Optional)**
```bash
chmod +x bulk_token.py
```

### 🚀 How to Use - No Files Needed!

**Just run the script:**
```bash
python bulk_token.py
```

**Then type your accounts:**
```
Account 1: user@example.com|mypassword123
    ✓ Added
Account 2: +1234567890|anotherpass
    ✓ Added
Account 3: done
```

That's it! The script processes everything and saves to files automatically.

### 📝 Input Format

Each account should be in this format:
```
uid|password
```

**Examples:**
```
user@example.com|mypassword123
+1234567890|securepass456
john.doe|password789
```

**Tips:**
- Type one account per line
- Press Enter after each account
- Type `done` when you're finished
- Press Ctrl+C to cancel anytime

### 📤 Output Files

The script automatically creates two files:

**1. results_TIMESTAMP.txt** - Detailed results:
- Access tokens
- Cookies
- c_user and datr values
- Full appstate JSON
- Error messages for failed accounts

**2. tokens_TIMESTAMP.txt** - Simple format:
```
uid|token
uid|token
```

### 📊 Real Usage Example

```bash
$ python bulk_token.py

╔══════════════════════════════════════════════╗
║          ██╗    ██╗███████╗██╗   ██╗███╗   ██╗          ║
║          ██║    ██║██╔════╝╚██╗ ██╔╝████╗  ██║          ║
║          ██║ █╗ ██║█████╗   ╚████╔╝ ██╔██╗ ██║          ║
║          ██║███╗██║██╔══╝    ╚██╔╝  ██║╚██╗██║          ║
║          ╚███╔███╔╝███████╗   ██║   ██║ ╚████║          ║
║           ╚══╝╚══╝ ╚══════╝   ╚═╝   ╚═╝  ╚═══╝          ║
║        Facebook Bulk Token Generator         ║
╚══════════════════════════════════════════════╝

[*] Enter your accounts below (Format: uid|password)
[*] Type 'done' when finished

Account 1: test@gmail.com|pass123
    ✓ Added
Account 2: done

[*] Processing 1 account(s)...

[1/1] Processing: test@gmail.com... ✓ SUCCESS

================================================================================
[*] Processing Complete!
[*] Total Accounts: 1
[*] Successful: 1
[*] Failed: 0
[*] Success Rate: 100.0%

[*] 📁 Results saved to:
    - results_20251114_152000.txt (detailed)
    - tokens_20251114_152000.txt (tokens only)

[*] ✅ 1 token(s) successfully generated!
[*] Find your tokens in: tokens_20251114_152000.txt
================================================================================
```

### ⚙️ Features

✅ No need to create files  
✅ Type accounts directly  
✅ Beautiful WEYN banner  
✅ Progress tracking with success/fail indicators  
✅ Detailed error reporting  
✅ Auto-saves to timestamped files  
✅ Works perfectly on Termux  

### 🔧 Troubleshooting

**Error: "No module named 'requests'"**
```bash
pip install requests
```

**Error: "Permission denied"**
```bash
chmod +x bulk_token.py
```

**Want to Cancel?**
- Press `Ctrl+C` at any time
- Or type `done` to finish input

**Find Your Results:**
```bash
# List all result files
ls -lt results_*.txt

# View latest tokens
cat tokens_*.txt

# View detailed results
cat results_*.txt
```

### 🛡️ Security Notes

- Your tokens are saved in local files
- Keep these files private
- Don't share your tokens
- Delete files after use if needed
- Use strong passwords

### 💡 Termux-Specific Tips

**Keep Termux Awake:**
```bash
termux-wake-lock
python bulk_token.py
termux-wake-unlock
```

**Make It Easier to Run:**
```bash
# Add alias to .bashrc
echo "alias weyn='python ~/path/to/bulk_token.py'" >> ~/.bashrc
source ~/.bashrc

# Now just type:
weyn
```

**Access Your Files:**
```bash
# Files are saved in the same folder
ls -lt *.txt

# Copy to phone storage
cp tokens_*.txt ~/storage/downloads/
```

### 🔄 Updates

To update to the latest version:
```bash
cd <repo-folder>
git pull
```

### 🎯 Why It's Perfect for Termux

- ✨ No file management - just type
- 🚀 Fast and lightweight
- 📱 Mobile-friendly interface
- 💾 Auto-saves everything
- 🛡️ Validates input as you type
- 🎨 Beautiful progress display

---

**Made with 💙 by WEYN**
