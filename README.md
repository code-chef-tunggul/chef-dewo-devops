# 🍣 Chef Dewo's DevOps Journey: From Kitchen to Cloud

[![Bilingual: EN/ID](https://img.shields.io/badge/Language-Bilingual-blue.svg)](#)
[![Status: Production-Ready](https://img.shields.io/badge/Status-Production--Ready-green.svg)](#)

Welcome to my first professional DevOps repository. I am a professional sushi chef with 20+ years of experience now transitioning into a **Cloud Infrastructure & DevOps Engineer**. This project showcases my ability to automate server security and handle real-world troubleshooting.

---

## 🇬🇧 English: SSH Hardening Script

### **Overview**
This Bash script automates the security "hardening" of a Linux server. It is designed to minimize the attack surface by changing default configurations that are often targeted by hackers.

### **Features**
*   **Port Migration**: Moves SSH from the standard Port 22 to Port 2222 to avoid automated brute-force bots.
*   **Root Protection**: Disables direct `root` login, forcing users to login as a standard user for better audit trails.
*   **Automation**: Handles configuration backups and `sshd_config` updates in seconds.

### **Technical Challenges Overcome**
During development on Ubuntu 24.04 (WSL2), I successfully resolved:
*   `systemd` and `ssh.socket` activation conflicts.
*   Privilege separation directory issues (`/run/sshd`).
*   Manual daemon execution for verification when standard services failed.

---

## 🇮🇩 Bahasa Indonesia: Skrip Pengamanan SSH

### **Ringkasan**
Skrip Bash ini mengotomatiskan proses "hardening" atau pengamanan server Linux. Dirancang untuk memperkecil celah serangan dengan mengubah konfigurasi default yang sering menjadi target peretas.

### **Fitur Utama**
*   **Migrasi Port**: Memindahkan SSH dari Port 22 standar ke Port 2222 untuk menghindari bot otomatis.
*   **Perlindungan Root**: Menonaktifkan login langsung sebagai `root`, memaksa akses melalui user biasa demi keamanan.
*   **Otomatisasi**: Menangani backup konfigurasi dan pembaruan `sshd_config` dalam hitungan detik.

### **Tantangan Teknis yang Diselesaikan**
Dalam proses pengembangan di Ubuntu 24.04 (WSL2), saya berhasil mengatasi:
*   Konflik antara `systemd` dan `ssh.socket`.
*   Masalah direktori *privilege separation* (`/run/sshd`) yang hilang.
*   Eksekusi daemon manual untuk verifikasi ketika layanan standar bermasalah.

---

## 🚀 How to Use / Cara Penggunaan

1. **Clone the repository**:
   ```bash
   git clone [https://github.com/code-chef-tunggul/chef-dewo-devops.git](https://github.com/code-chef-tunggul/chef-dewo-devops.git)
