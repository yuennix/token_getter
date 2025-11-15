# Termux Troubleshooting

## If the script doesn't work in Termux:

### 1. Install Python and Dependencies
```bash
pkg update && pkg upgrade
pkg install python
pip install requests
```

### 2. Give Execute Permission
```bash
chmod +x bulk_token.py
```

### 3. Run the Script
```bash
python bulk_token.py
```

### Common Issues:

**"python: command not found"**
- Install Python: `pkg install python`

**"No module named 'requests'"**
- Install requests: `pip install requests`

**Input not working / freezing**
- Make sure you're using the standard Python input
- Try running with: `python3 bulk_token.py` instead
- Ensure Termux has storage permissions

**Paste not working**
- In Termux, long-press on screen to paste
- Or type manually if paste doesn't work
- Press Enter twice after pasting all accounts

### Alternative: Type Each Line
If bulk paste doesn't work in your Termux version, type each account and press Enter after each one, then press Enter twice when done.
