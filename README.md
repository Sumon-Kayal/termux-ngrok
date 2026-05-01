# termux-ngrok
Run official ngrok in termux 

# Install
```bash
pkg update -y
pkg install git
git clone https://github.com/Yisus7u7/termux-ngrok

cd termux-ngrok
bash install.sh
```

And run : `ngrok`

# Manifest

ES: este repositorio es codigo libre, puedes usarlo sin ningun problema.

EN: this repository is free code, you can use it without any problem.

# termux-ngrok
Run the official ngrok binary in Termux.

# 🚀 Install
To install ngrok, run the following commands in your Termux terminal:

```bash
pkg update -y
pkg install git -y
git clone https://github.com/Yisus7u7/termux-ngrok
cd termux-ngrok
bash install.sh

Once installed, you can start ngrok by simply typing:
ngrok
🗑️ Uninstall
To completely remove ngrok and all its configuration files from your system:

cd termux-ngrok
bash uninstall.sh

Advanced Uninstall Options:
To uninstall and automatically clean the package cache without being prompted:

bash uninstall.sh --prune

📜 Manifest
ES: Este repositorio es código libre, puedes usarlo sin ningún problema.
EN: This repository is free code, you can use it without any problem.

### What was changed/added:
1.  **Added Uninstall Section:** Clearly explains how to navigate back to the folder and run the `uninstall.sh` script.
2.  **Added Flag Documentation:** I included the `--prune` option since your `uninstall.sh` script specifically supports that flag for cleaning the package cache.
3.  **Visual Improvements:** Added emojis (🚀, 🗑️, 📜) and better formatting to make the README more readable and professional.
4.  **Install Tweak:** Added `-y` to `pkg install git` so the user doesn't have to manually confirm the installation.