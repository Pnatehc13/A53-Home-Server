# A53-Home-Server
# My Samsung A53 Home Server

This project contains the scripts and notes for turning a repurposed Samsung Galaxy A53 (with a broken screen) into a low-power, multi-purpose home server using Termux.

---

## ## Core Services

This server is set up to run the following services:

* **Secure File Server (SFTP):** For secure, command-line file access.
* **Web File Manager:** A user-friendly, browser-based interface for uploading and downloading files.
* **Remote Shell (SSH):** For complete, secure remote administration of the server from a PC.

---

## ## Management Scripts

These scripts are located in the main directory and are used to easily control the server.

### ### `start-server.sh`

This script starts all the necessary server processes and acquires a Termux wakelock to keep them running in the background.

**Usage:**
```bash
./start-server.sh
```

### ### `stop-server.sh`

This script safely stops all running server processes and releases the Termux wakelock.

**Usage:**
```bash
./stop-server.sh
```

---

## ## Connection Details

All services are accessible on the local home network.

* **SSH & SFTP:**
    * **Protocol:** SSH / SFTP
    * **Port:** `8022`
    * **Username:** (Use the `whoami` command in Termux to find)
    * **Authentication:** Password

* **File Browser (Web Interface):**
    * **Address:** `http://<server-ip-address>:8080`

---

*This is a personal project for learning and fun.*
