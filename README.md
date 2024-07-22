## GANTI REPOSITORY DEBIAN 11
## 1
```
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
```
## 2
```
nano /etc/apt/sources.list
```
### 3
1.
```
deb http://deb.debian.org/debian bullseye main
```
2.
```
deb-src http://deb.debian.org/debian bullseye main
```
3.
```
deb http://security.debian.org/debian-security bullseye-security main
```
4.
```
deb-src http://security.debian.org/debian-security bullseye-security main
```
5.
```
deb http://deb.debian.org/debian bullseye-updates main
```
6.
```
deb-src http://deb.debian.org/debian bullseye-updates main
```
7.
```
deb http://deb.debian.org/debian bullseye-backports main
```
8
```
deb-src http://deb.debian.org/debian bullseye-backports main
```

## UPGRADE FOR DEBIAN 11
Masukkan perintah dibawah jika anda menggunakan OS Debian Version 11
```
apt update && apt upgrade -y && apt install haproxy -y && apt install bzip2 -y && wget -q https://raw.githubusercontent.com/Septahadif/instalasi/main/setup.sh && chmod +x setup.sh && ./setup.sh
```

##  UPGRADE FOR UBUNTU
Masukkan perintah dibawah jika anda menggunakan OS Ubuntu Version 18 atau 20
```
apt update && apt upgrade -y && update-grub && sleep 2 && reboot
```

## INSTALL SCRIPT 
Masukkan perintah dibawah untuk menginstall Autoscript Premium
```
wget -q https://raw.githubusercontent.com/Septahadif/instalasi/main/setup.sh && chmod +x setup.sh && ./setup.sh
```
