# WEYN - Facebook Bulk Token Generator

```
╔══════════════════════════════════════════════╗
║                                              ║
║          ██╗    ██╗███████╗██╗   ██╗███╗   ██╗          ║
║          ██║    ██║██╔════╝╚██╗ ██╔╝████╗  ██║          ║
║          ██║ █╗ ██║█████╗   ╚████╔╝ ██╔██╗ ██║          ║
║          ██║███╗██║██╔══╝    ╚██╔╝  ██║╚██╗██║          ║
║          ╚███╔███╔╝███████╗   ██║   ██║ ╚████║          ║
║           ╚══╝╚══╝ ╚══════╝   ╚═╝   ╚═╝  ╚═══╝          ║
║                                              ║
║        Facebook Bulk Token Generator         ║
║                  v1.0                        ║
╚══════════════════════════════════════════════╝
```

A powerful command-line tool for bulk Facebook access token generation. Perfect for Termux (Android), Linux, Mac, and Windows. No file management needed - just run and type!

## ⚡ Features

- 🚀 Direct input mode - no files needed!
- 📱 Perfect for Termux (Android) and PC
- 🎨 Beautiful WEYN banner display
- 📊 Real-time progress tracking
- ✅ Success/fail indicators for each account
- 💾 Auto-saves results to timestamped files
- 🛡️ Handles errors gracefully
- ✨ Simple and fast

## 📦 Installation

### On Termux (Android)

```bash
pkg update && pkg upgrade
pkg install python git
pip install requests
git clone https://github.com/yourusername/weyn-token-generator
cd weyn-token-generator
```

### On PC (Linux/Mac/Windows)

```bash
# Make sure Python 3 is installed
pip install requests
git clone https://github.com/yourusername/weyn-token-generator
cd weyn-token-generator
```

## 🚀 Usage - Super Simple!

### Just Run and Type!

```bash
python bulk_token.py
```

Then enter your accounts one by one:
```
Account 1: user@example.com|password123
    ✓ Added
Account 2: +1234567890|mypassword
    ✓ Added
Account 3: done
```

That's it! The script will:
1. Process all accounts
2. Show real-time progress
3. Save results to files automatically

### What You Get

The script creates two files automatically:

**results_TIMESTAMP.txt** - Detailed information:
```
================================================================================
UID: user@example.com
Status: SUCCESS

Access Token:
EAAGxxxxxxxxxxxxxxx

Cookie:
c_user=123456; datr=abc123; xs=...

C_USER: 123456
DATR: abc123

AppState:
[...]
================================================================================
```

**tokens_TIMESTAMP.txt** - Clean format for your tokens:
```
user@example.com|EAAGxxxxxxxxxxxxxxx
+1234567890|EAAGyyyyyyyyyyyyyyy
```

## 📖 Examples

### Simple Usage
```bash
$ python bulk_token.py

[*] Enter your accounts below (Format: uid|password)
[*] Type 'done' when finished

Account 1: myemail@gmail.com|mypass123
    ✓ Added
Account 2: +1234567890|password456
    ✓ Added
Account 3: done

[*] Processing 2 account(s)...

[1/2] Processing: myemail@gmail.com... ✓ SUCCESS
[2/2] Processing: +1234567890... ✓ SUCCESS

================================================================================
[*] Processing Complete!
[*] Total Accounts: 2
[*] Successful: 2
[*] Failed: 0
[*] Success Rate: 100.0%

[*] 📁 Results saved to:
    - results_20251114_152000.txt (detailed)
    - tokens_20251114_152000.txt (tokens only)

[*] ✅ 2 token(s) successfully generated!
[*] Find your tokens in: tokens_20251114_152000.txt
================================================================================
```

## 📋 Input Format

**Format:** `uid|password`

**UID can be:**
- Email: `user@example.com|password`
- Phone: `+1234567890|password`
- Username: `john.doe|password`

**Tips:**
- Type one account per line
- Type `done` when finished
- Invalid entries are caught immediately
- Press Ctrl+C to cancel anytime

## 📂 Output Files

All results are saved automatically with timestamps:

### Detailed Results
`results_YYYYMMDD_HHMMSS.txt` contains:
- Access tokens
- Session cookies
- c_user values
- datr values
- Full appstate JSON
- Error messages for failures

### Tokens Only
`tokens_YYYYMMDD_HHMMSS.txt` contains:
- Simple `uid|token` format
- Only successful accounts
- Easy to parse and use

## 🔧 Troubleshooting

**"No module named 'requests'"**
```bash
pip install requests
```

**"Permission denied" (Linux/Mac/Termux)**
```bash
chmod +x bulk_token.py
./bulk_token.py
```

**Cancel Input**
- Press `Ctrl+C` to cancel
- Type `done` to finish normally

## 🛡️ Security Notes

- Results are saved to your local files
- Keep your token files private
- Don't share tokens or cookies
- Delete files after use if needed
- Use strong, unique passwords
- For educational purposes only

## 💡 Termux Pro Tips

### Keep Screen Awake During Processing
```bash
termux-wake-lock
python bulk_token.py
termux-wake-unlock
```

### Find Your Results
```bash
# List all result files
ls -lt results_*.txt tokens_*.txt

# View latest tokens
cat tokens_*.txt
```

### Quick Access
```bash
# Make it easier to run
chmod +x bulk_token.py
./bulk_token.py
```

## 🎯 Why WEYN?

✨ **No File Management** - Just run and type  
🚀 **Super Fast** - Process multiple accounts instantly  
📱 **Mobile Friendly** - Perfect for Termux on Android  
💾 **Auto-Save** - Never lose your tokens  
🛡️ **Error Proof** - Validates input as you type  
🎨 **Beautiful** - Clean interface with progress tracking  

## 📄 License

This project is for educational purposes only. Use responsibly and at your own risk.

## 🙏 Credits

**Made with 💙 by WEYN**

---

**Version:** 1.0  
**Last Updated:** November 2025  
**Works on:** Termux, Linux, Mac, Windows
