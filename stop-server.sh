#!/data/data/com.termux/files/usr/bin/sh
echo "Stopping services..."

# Stop the File Browser server
pkill filebrowser

# Stop the Secure Shell & SFTP server
pkill sshd

# Release the wakelock
termux-wake-unlock

echo "❌ All servers are now OFFLINE."
