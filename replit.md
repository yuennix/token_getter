# WEYN - Facebook Bulk Token Generator

## Overview
A command-line bulk Facebook access token generator designed for Termux (Android) and PC usage. Process multiple accounts with direct input - no file management needed! Results are automatically saved to your files.

## Features
✅ Direct input mode - just run and type!  
✅ Beautiful WEYN banner display  
✅ Real-time progress tracking  
✅ Success/fail indicators for each account  
✅ Auto-saves detailed results and tokens  
✅ Timestamped output files  
✅ Works on Termux (Android), Linux, Mac, Windows  
✅ No file preparation required  

## Project Structure
- **bulk_token.py**: Main script for bulk token generation
- **README.md**: Complete usage guide
- **README_TERMUX.md**: Termux-specific installation guide
- **requirements.txt**: Python dependencies (only requests library needed)
- **run.sh**: Info display script

## Quick Start on Replit

### How to Use
This project is ready to run! The Console tab shows instructions for using the tool.

**To run the token generator:**
1. Click the **Shell** tab
2. Run: `python bulk_token.py`
3. Paste all your accounts (format: `uid|password`, one per line)
4. Press **Enter twice** when finished
5. Your tokens will be saved to timestamped files

### Output Files
Results are automatically saved to:
- `results_TIMESTAMP.txt` - Detailed results with tokens, cookies, appstate
- `tokens_TIMESTAMP.txt` - Simple uid|token format

### Environment Setup (Replit)
- **Python**: 3.11
- **Dependencies**: requests (auto-installed)
- **Workflow**: Displays usage instructions on the Console tab

## Usage

**Super simple - no files needed:**
```bash
$ python bulk_token.py

[*] Enter your accounts below (Format: uid|password)
[*] Type 'done' when finished

Account 1: email@gmail.com|pass123
    ✓ Added
Account 2: done

[*] Processing 1 account(s)...
[1/1] Processing: email@gmail.com... ✓ SUCCESS

[*] ✅ 1 token(s) successfully generated!
[*] Find your tokens in: tokens_20251114_152000.txt
```

## Output Files

**results_TIMESTAMP.txt** - Detailed results including:
- Access tokens
- Cookies
- c_user and datr values
- Full appstate JSON
- Error messages for failed accounts

**tokens_TIMESTAMP.txt** - Simple format:
```
uid|token
uid|token
```

## Termux Installation (Android)

```bash
# Install required packages
pkg update && pkg upgrade
pkg install python git
pip install requests

# Download and run
git clone <your-repo-url>
cd <repo-folder>
python bulk_token.py
```

## Usage Tips

- Type `done` when finished entering accounts
- Press Ctrl+C to cancel anytime
- Invalid format entries are caught immediately
- Each successful run creates new timestamped files
- All files are saved in the current directory

## Recent Changes
- **November 15, 2025** (Replit Setup):
  - **Menu system added** - Choose to generate more tokens or exit when done!
  - **Auto screen clear** - Clean interface between runs
  - **Tokens now displayed in console** - see uid|token format while running!
  - Shows each token immediately after generation
  - Shows all tokens together at the end for easy copying
  - **Updated to bulk paste mode** - paste all accounts at once!
  - Press Enter twice to finish input (no more one-by-one)
  - Restored WEYN banner with "FACEBOOK TOKEN GETTER"
  - Configured Python 3.11 environment
  - Auto-installed requests dependency
  - Set up workflow to display usage instructions
  - Added .gitignore for Python and output files
  - Ready to run on Replit Shell tab and Termux

- **November 14, 2025**: 
  - Created WEYN bulk token generator for Termux and PC
  - **Direct input mode** - no file preparation needed!
  - Supports uid|password format for bulk processing
  - Beautiful WEYN banner and progress display
  - Auto-saves with timestamps (detailed + tokens-only)
  - Real-time input validation
  - Handles empty input and invalid formats gracefully
  - Perfect for Termux mobile usage
