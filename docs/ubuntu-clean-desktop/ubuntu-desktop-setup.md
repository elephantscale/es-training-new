# Ubuntu Desktop V2

## Summary

- base image : Ubuntu 20.04 LTS
- user : ubuntu
- SSH keys : es-training2
- Recommended instance : t2.large

## Setup Instructions

### ubuntu-desktop-v48

```bash
## do basic update
$   sudo apt update
$   sudo apt upgrade -y
$   sudo reboot
```

**SSH keys**

`es-training2.pub` is added to `~/.ssh/authorized_keys`

**enable password-less ssh**

edit `/etc/ssh/sshd_config`

```bash
$   sudo vi /etc/ssh/sshd_config
```

change

```text
PasswordAuthentication yes
ChallengeResponseAuthentication yes
```

Also to prevent timeout

```text
TCPKeepAlive yes
ClientAliveInterval 120
ClientAliveCountMax 72
```

Each time we create a new snapshot, password authentication will be disabled... To fix that:

```bash
$   sudo vim /etc/cloud/cloud.cfg
```

change
```text
lock_passwd: false
```

**Disable sudo password**

```bash
$   echo "ubuntu ALL=(ALL:ALL) NOPASSWD: ALL"  | sudo  tee /etc/sudoers.d/ubuntu

```

**disable apparmor**

```bash
$   sudo systemctl stop apparmor
$   sudo systemctl disable apparmor
```

reboot:  `sudo reboot`

**Git config**

copied  key : ~/.ssh/deploy-key1

and configured ssh to use that for github

~/.ssh/config

```text
Host github.com
    HostName github.com
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/deploy-key1.pem
```

verify by :
```bash
    $   chmod 600 ~/.ssh/*
    $   ssh -T git@github.com
```

**Startup scripts**

```bash
$   mkdir ~/logs
$   mkdir ~/scripts

$   cd ~/scripts;  git clone git@github.com:elephantscale/docker-es-training.git
```

Edit /etc/rc.local file : `sudo vi /etc/rc.local`

copy this [rc.local](rc.local) file into `/etc/rc.local`


```bash
$   sudo chmod 755  /etc/rc.local
$   sudo reboot
```

Try to login to the server with password

```bash
    $   ssh ubuntu@IP_ADDRESS
    # enter password :  instance-id
```

**Install Docker**

```bash

$   sudo apt-get remove docker docker-engine docker.io

$   sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

$   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

$   echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

$   sudo apt update

$   sudo apt-get install -y docker-ce docker-ce-cli containerd.io

$   sudo usermod -aG docker $(whoami)
# logout and log backin

$   docker images

$   docker run hello-world

```

**install docker compose**

```bash
$  sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

$  sudo chmod +x /usr/local/bin/docker-compose

$  docker-compose --version
```

**Install VNC**

```bash
    $   sudo apt install -y xfce4 xfce4-goodies tigervnc-standalone-server   autocutsel
    # choose lightdm

    $   touch ~/.Xauthority

    # set a temp vnc password
    $   vncpassword
    #   enter : bingobob123
```

```bash
$   mkdir ~/.vnc
```

file : `~/.vnc/xstartup`

```sh
#!/bin/sh

## --- option 1 ---
#unset SESSION_MANAGER
#unset DBUS_SESSION_BUS_ADDRESS

#[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
#dbus-launch xfce4-terminal &
#dbus-launch startxfce4 &

# xfconf-query -c xfwm4 -p /general/use_compositing -s false &

## --- option 2 ----
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
#vncconfig -nowin &
#vncconfig -iconic &
autocutsel -fork

# xfce4-session &
#xfwm4 --replace —display :1 &
xfce4-terminal &
startxfce4 &
```

```bash
$   chmod +x ~/.vnc/xstartup
```

Install noVNC

<!-- ```bash
$  sudo apt install -y novnc  websockify python-numpy
``` -->

```bash
$   sudo apt install python3-numpy
$   mkdir apps
$   cd apps;  git clone https://github.com/novnc/noVNC
```

Setup SSL

```bash
$   cd /etc/ssl
$   sudo openssl req -x509 -nodes -newkey rsa:2048 -keyout novnc.pem -out novnc.pem -days 365
$   sudo chmod 644 novnc.pem
```

**install misc stuff**

```bash
$   sudo apt install -y firefox
```

Downloaded and install vscode binary 

```bash
$   sudo apt install ./Downloads/code_1.60.0-1630494279_amd64.deb 
```

**JDK**

```bash
$   sudo apt install -y openjdk-11-jdk-headless
```