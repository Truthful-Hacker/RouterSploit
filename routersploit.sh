echo '''[*] You are installing routersploit in your terminal'''
cd $HOME
echo
sleep 2
echo "[*] Installing requirements..."
apt update && apt upgrade -y
sleep 1
apt install autoconf automake bison bzip2 clang cmake coreutils diffutils flex gawk git grep gzip libtool make patch perl sed silversearcher-ag tar wget pkg-config -y
sleep 1
apt install python clang libcrypt libffi git openssl -y
sleep 1
echo "[*] Cloning routersploit..."
sleep 1
git clone https://github.com/threat9/routersploit
sleep 1
cd routersploit
sleep 1
echo "[*] Now installing requirements with python3-pip..."
pip install --upgrade pip
sleep 1
pip install requests
sleep 1
python3 -m pip install -r requirements.txt
sleep 2
python3 -m pip install -r requirements-dev.txt
sleep 2
cd $HOME
sleep 1
clear
echo "[*] routersploit is now installed!"
echo You can run routersploit directly with command
echo cd routersploit and python rsf.py
