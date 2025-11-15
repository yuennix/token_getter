#!/bin/bash

clear
cat << "EOF"
╔══════════════════════════════════════════════╗
║                                              ║
║          ██╗    ██╗███████╗██╗   ██╗███╗   ██╗          ║
║          ██║    ██║██╔════╝╚██╗ ██╔╝████╗  ██║          ║
║          ██║ █╗ ██║█████╗   ╚████╔╝ ██╔██╗ ██║          ║
║          ██║███╗██║██╔══╝    ╚██╔╝  ██║╚██╗██║          ║
║          ╚███╔███╔╝███████╗   ██║   ██║ ╚████║          ║
║           ╚══╝╚══╝ ╚══════╝   ╚═╝   ╚═╝  ╚═══╝          ║
║                                              ║
╚══════════════════════════════════════════════╝

        FACEBOOK TOKEN GETTER

Format: uid|password or email|password

═══════════════════════════════════════════════

🔧 REPLIT: Click the Shell tab and run:
   python bulk_token.py

📱 TERMUX: Run in your terminal:
   python bulk_token.py

EOF

echo ""

# Keep the process running
tail -f /dev/null
