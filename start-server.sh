#!/data/data/com.termux/files/usr/bin/sh
echo "Starting services..."

# Acquire wakelock to keep Termux running
termux-wake-lock

# Start the Secure Shell & SFTP server (sshd)
sshd

# Start the File Browser web server in the background
# This assumes the filebrowser program is in the home directory
~/filebrowser -a 0.0.0.0 -p 8080 &

echo "✅ All servers are now ONLINE."
echo "-> SSH/SFTP on port 8022"
echo "-> File Browser on http://$(ifconfig wlan0 | grep 'inet ' | awk '{print $2}'):8080"
