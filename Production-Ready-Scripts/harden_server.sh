#!/bin/bash

# Script: harden_server.sh
# Deskripsi: Mengamankan SSH (Port & Root Login) secara otomatis.
# Author: Chef Dewo (Zagreb DevOps Journey)

echo "--- [MEMULAI PROSES HARDENING SERVER] ---"

# 1. Backup file asli buat jaga-jaga
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
echo "[1/3] Backup konfigurasi SSH dibuat."

# 2. Ganti Port ke 2222 dan Matikan Root Login secara otomatis
# Kita pakai 'sed' (Stream Editor) untuk edit teks tanpa buka file
sudo sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
sudo sed -i 's/Port 22/Port 2222/' /etc/ssh/sshd_config
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
echo "[2/3] Konfigurasi SSH diperbarui (Port 2222, No Root)."

# 3. Reload sistem agar perubahan aktif (Cara WSL/Ubuntu Modern)
echo "[3/3]nMenyelaraskan System dan Socket..."
sudo service ssh stop
sudo service ssh start
echo "[3/3] Layanan SSH direstart."

echo "--- [SERVER BERHASIL DIAMANKAN!] ---"
