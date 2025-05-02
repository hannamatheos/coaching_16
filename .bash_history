exit
sudo apt-get ca-certificates
sudo apt-get install ca-certificates
sudo apt-get update
sudo apt-get install git
git -version
sudo apt-get update
sudo apt-get install git
git-version
git -version
git-version
exit
wsl --set-default-version 2
git --version
sudo apt-get update
sudo apt-get install git
git --version
git config --global init.defaultBranch main
git config --global core.editor "code --wait"
git config --global user.name "sim_ks77"
git config --global user.email "sim_ks77@yahoo.com"
git config -l
git config --global credential.helper store git config
git config --global credential.helper store
git config --global credential.helper cache
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - sudo apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 22
# Verify the Node.js version:
node -v # Should print "v22.14.0".
nvm current # Should print "v22.14.0".
# Verify npm version:
npm -v # Should print "10.9.2".
udo apt update && sudo apt upgrade
sudo apt update && sudo apt upgrade
python3 --version
sudo apt upgrade python3
sudo apt install python3-pip
sudo apt install python3-venv
code
Open Settings(JSON)
Open Settings (JSON)
Open Settings
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
tar -zxvf helm-v3.0.0-linux-amd64.tar.gz
tar -zxvf helm-v3.17.2-darwin-amd64.tar.gz
ls
cd..
exit
ls
unzip awscliv2.zip
sudo apt unstall unzip
sudo apt install unzip
unzip awscliv2.zip
sudo ./aws/install
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
ls
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
choco install kubernetes-helm
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sudo yum remove awscli
echo "Hello this file is used for symmetric encryption" > sym-input.txt
echo "Hello this file is used for asymmetric encryption" > asymm-input.txt
ls
vi sym-input.txt 
sudo docker run hello-world
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
exit
echo $path
~echo $path
cls
clear
ifconfig
sudo apt install net-tools
ifconfig
clear
pwd
whoami
cd~
cd ../..
cat etc/wsl.conf
ls
cd myproject/
ls
cd terraform-ec2-infra/
ls
vi app.py
ls
cd myproject/
ls
cd terraform-ec2-infra/
ls
vi app.py
pip install flask
. .venv/bin/activate
mkdir myproject
cd myproject
python3 -m venv .venv
. .venv/bin/activate
pip install Flask
cd flash_app
cd myproject
ls
cd..
clear
python app.py
python3 --version
pip3 --version
flask --version
git --version
git clone https://github.com/simks77/terraform-ec2-infra.git
ll
cd terraform-ec2-infra/
ll
cd..
cd
ls
cd myproject
ls
cd terraform-ec2-infra/
code
python app.py
touch app.py
vi app.py
python3 app.py
ll
python3 app.py
ls
cat app.py
python3 app.py
vi app.py
python3 app.py
ls
cd myproject/
ls
cd terraform-ec2-infra/
git status
ls
vi app.py
git status
git add
git add .
git commit -m "Add python code"
git push
clear
git push
ls
git push
ls
cd myproject/
ls
cd terraform-ec2-infra/
ls
vi app.py
cd
clear
ls
ssh -i "KS-Linux-Server1.pem" ec2-user@172.31.1.11
ls
C:\Users\KS\Downloads\KS-Linux-Server1.pem
ls
chmod 400 "KS-Linux-Server1.pem"
ssh -i "KS-Linux-Server1.pem" ec2-user@172.31.1.11
durl 175.41.176.90:8080
curl 175.41.176.90:8080
:q
q
clear
curl 47.128.154.41:8080
ls
ifconfig
ls
vi sym-input.txt 
vi asymm-input.txt 
openssl enc -aes-256-cbc -pbkdf2 -in sym-input.txt -out sym-encrypted.txt
vi sym-input.txt 
ls
vi sym-encrypted.txt
openssl enc -d -aes-256-cbc -pbkdf2 -in sym-encrypted.txt -out sym-decrypted.txt
vi sym-encrypted.txt
ls
vi sym-decrypted.txt 
cls
clear
echo "Hello this file is used for symmetric encryption" > sym-input.txt
echo "Hello this file is used for asymmetric encryption" > asym-input.txt
ls
vi sym-input.txt 
cear
clear
openssl enc -aes-256-cbc -pbkdf2 -in sym-input.txt -out sym-encrypted.txt
ls
vi sym-encrypted.txt 
openssl enc -d -aes-256-cbc -pbkdf2 -in sym-encrypted.txt -out sym-decrypted.txt
vi sym-decrypted.txt 
openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048
openssl rsa -pubout -in private_key.pem -out public_key.pem
openssl pkeyutl -encrypt -in asymm-input.txt -out encrypted_asymmetric.txt -pubin -inkey
openssl pkeyutl -encrypt -in asymm-input.txt -out encrypted_asymmetric.txt -pubin -inkey public_key.pem
openssl pkeyutl -decrypt -in encrypted_asymmetric.txt -out asymm-decrypted.txt -inkey private_key.pem
vi asymm-input.text
vi asymm-decrypted.txt
ls
vi asym-input.txt
openssl pkeyutl -encrypt -in asymm-input.txt -out encrypted_asymmetric.txt -pubin -inkey public_key.pem
vi asym-input.txt
openssl pkeyutl -decrypt -in encrypted_asymmetric.txt -out asymm-decrypted.txt -inkey private_key.pem
ls
vi encrypted_asymmetric.txt 
vi asymm-decrypted.txt 
ls
mkdir scratch
ls
cd /mnt
ls
cd c
ls
cd users
ls
cd ks
ls
cd downloads
ls
mv /mnt/c/users/ks/downloads/kssim-DB-Key.pem ~/scratch 
cdls
root
cd\
ls
cd scratch
ls
ls -lah
chmod 400 "kssim-DB-Key.pem"
ls -lah
ssh -i "kssim-DB-Key.pem" ec2-user@ec2-18-143-158-187.ap-southeast-1.compute.amazonaws.com
ifconfig
sudo ufw status
cls
clear
cd/mnt
/mnt
mv /mnt
ls
mv /mnt/c/users/ks
mv C:\Users\KS\Downloads\ks1-windows-serverKey.pem
cd /mnt/c
ls
cd users
ls
cd ks
ls
cs downloads
cd downloads
ls
chmod 400 "ks1-linux-server.pem"
ssh -i "ks1-linux-server.pem" ec2-user@ec2-54-169-98-37.ap-southeast-1.compute.amazonaws.com
cd /mnt/c
ls
cd users
cd ks
cd downloads
ls
chmod 400 "ks1-linux-server.pem"
ssh -i "ks1-linux-server.pem" ec2-user@ec2-54-169-98-37.ap-southeast-1.compute.amazonaws.com
ssh ec2-users@54.169.98.37
clear
cd /mnt
ls
cd c
ls
cd users/ks/download
cd users/ks/
cls
clear
ls
cd downloads
clear
ls
chmod 400 "kssim-linux-serverkey.pem"
ssh -i "kssim-linux-serverkey.pem" ec2-user@ec2-13-212-21-252.ap-southeast-1.compute.amazonaws.com
cdq:
:q
cd
ssh -i "kssim-linux-serverkey.pem" ec2-user@ec2-13-212-21-252.ap-southeast-1.compute.amazonaws.com
cd /mnt
cd users/ks/
ls
cd c
cd /users/ks
ls
cd users
cd ks
ls
cd downloads
ls
mv kssim-linux-serverkey.pem ~/scratch
cd
cd scratch
ls
chmod 400 "kssim-linux-serverkey.pem"
ssh -i "kssim-linux-serverkey.pem" ec2-user@ec2-13-212-21-252.ap-southeast-1.compute.amazonaws.com
ls
cd scratch
cd/mnt/c/users/ks/downloads
cd /mnt
ls
cd c
ls
cd users
cd ks
ls
cd downloads
ls
mv kssim-linux-serverkey.pem ~/scratch
ls
cd
ls
cd scratch
ls
chmod 400 "kssim-linux-serverkey.pem"
lah
ssh -i "kssim-linux-serverkey.pem" ec2-user@ec2-54-255-228-59.ap-southeast-1.compute.amazonaws.com
exit
cd /mnt
ls
cd d\c:
cd c
ls
cd users
ls
cd ks
ls
cd downloads
ls
mv kssim-linux-serverkeypair.pem ~/scratch
cd
ls
cd scratch
ls
chmod 400 "kssim-linux-serverkeypair.pem"
ls -lah kssim-linux-serverkeypair.pem
ssh -i "kssim-linux-serverkeypair.pem" ec2-user@ec2-13-212-233-117.ap-southeast-1.compute.amazonaws.com
exit
terraform --version
aws sts get-caller-identity
aws configure list
terraform --version
aws sts get-caller-identity
aws configure list
wget -O - https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
terraform --version
aws sts get-caller-identity
aws configure
code.
terraform --version
aws sts-caller-identity
aws sts get-caller-identity
ls
cd terraform-s3
ls
sudo yum remove awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
terraform --version
aws --version
sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
which aws
ls -l /usr/local/bin/aws
aws sts get-caller-identity
aws configure
aws sts get-caller-identity
mkdir terraform-s3
cd terraform-s3
code.
code
ls
cd /mnt
ls
cd c
ls
cd users/ks
ls
cd downloads
ls
mv kssim-web-serverkey.pem ~scratch
chmod 400 "kssim-web-serverkey.pem"
cd
chmod 400 "kssim-web-serverkey.pem"
cd scratch
chmod 400 "kssim-web-serverkey.pem"
ls
mv kssim-web-serverkey.pem ~scratch
cd
cd /mnt/c
ls
cd users/ks/download
cd users/ks/downloads
clear
ls
mv kssim-web-serverkeypair.pem ~/scratch
cd
chmod 400 "kssim-web-serverkey.pem"
cd scratch
chmod 400 "kssim-web-serverkey.pem"
chmod 400 "kssim-web-serverkeypair.pem"
ssh -i "kssim-web-serverkeypair.pem" ec2-user@ec2-52-221-221-192.ap-southeast-1.compute.amazonaws.com
cd /mnt/c/users/ks/downloads
ls
mv kssim-app-server1.pem ~/scratch
cd\
cd scratch
chmod 400 "kssim-app-server1.pem"
ssh -i "kssim-app-server1.pem" ec2-user@ec2-13-212-59-183.ap-southeast-1.compute.amazonaws.com
cd /mnt/c/users/ks/downloads
ls
mv kssim-web-server1key.pem ~/scratch
cd scratch
cd
cd scratch
chmod 400 "kssim-web-server1key.pem"
ssh -i "kssim-web-server1key.pem" ec2-user@ec2-54-179-73-13.ap-southeast-1.compute.amazonaws.com
cd /mnt/c/users/ks
cd download
cd downloads
ls
mv KS-linux-EC2.pem ~/Scratch
ls
cd
cd scratch
chmod 400 "KS-linux-EC2.pem"
ls
cd /mnt/c/users/ks/downloads
ls
mv kssim-linux-server1.pem ~/scratch
cd
cd scratch
ls
chmod 400 "kssim-linux-server1.pem"
ssh -i "kssim-linux-server1.pem" ec2-user@ec2-13-250-117-132.ap-southeast-1.compute.amazonaws.com
cd/mnt/c/users/ks/downloads
cd/mnt/c/
cd /mnt
cd c
cd users/ks
cd downloads
ls
mv kssim-linux-server2.pem ~/scratch
cd\
ls
cd scratch
ls
chmod 400 "kssim-linux-server2.pem"
ssh -i "kssim-linux-server2.pem" ec2-user@ec2-47-128-150-140.ap-southeast-1.compute.amazonaws.com
cd scratch
ssh -i "kssim-linux-server2.pem" ec2-user@ec2-47-128-150-140.ap-southeast-1.compute.amazonaws.com
cd scratch
ls 
ssh -i "kssim-linux-server1.pem" ec2-user@ec2-13-250-117-132.ap-southeast-1.compute.amazonaws.com
cd scratch
ssh -i "kssim-linux-server1.pem" ec2-user@ec2-13-250-117-132.ap-southeast-1.compute.amazonaws.com
cd /mnt/c/users/ks/downloads
ls
mv kssim-linux-test1.pem ~/Scratch
cd
cd scratch
ls
chmod 400 "kssim-linux-test1.pem"
ls
ssh -i "kssim-linux-test1.pem" ec2-user@ec2-52-77-210-61.ap-southeast-1.compute.amazonaws.com
cd /mnt/c/users/ks/downloads
ls
mv kssim-linux-test01.pem ~/scratch
cd\
cd scratch
ls
chmod 400 "kssim-linux-test01.pem"
ssh -i "kssim-linux-test01.pem" ec2-user@ec2-13-250-26-168.ap-southeast-1.compute.amazonaws.com
cd /mnt/c/users/ks/downloads
ls
mv kssim-linux-test.pem ~/scratch
cd
cd scratch
ls
chmod 400 "kssim-linux-test.pem"
ssh -i "kssim-linux-test.pem" ec2-user@ec2-47-128-218-40.ap-southeast-1.compute.amazonaws.com
cd /mnt/c/users/ks/downloads
ls
mv ce10-kssim-Linux-server01key.pem ~/scratch
mv ce10-kssim-Linux-server02key.pem ~/scratch
cd
cd scratch
ls
chmod 400 "ce10-kssim-Linux-server01Key.pem"
ls
chmod 400 "ce10-kssim-Linux-server01Key.pem"
ssh -i "ce10-kssim-Linux-server01Key.pem" ec2-user@ec2-54-254-145-249.ap-southeast-1.compute.amazonaws.com
cd
cd scratch
ls
cd scratch
chmod 400 "ce10-kssim-Linux-server01Key.pem"
chmod 400 "ce10-kssim-Linux-server01Key"
cd /mnt/c/users/ks/downloads
ls
mv ce10-kssim-Linux01Key.pem ~/scratch
cd\
cd scratch
ls
chmod 400 "ce10-kssim-Linux01Key.pem"
ssh -i "ce10-kssim-Linux01Key.pem" ec2-user@ec2-54-169-214-64.ap-southeast-1.compute.amazonaws.com
cd /mnt/c/users/ks/downloads
ls
mv CE10-KSSIM-LINUX01akey.pem ~/scratch
cd\
cd scratch
ls
chmod 400 "CE10-KSSIM-LINUX01akey.pem"
ssh -i "CE10-KSSIM-LINUX01akey.pem" ec2-user@ec2-47-129-224-44.ap-southeast-1.compute.amazonaws.com
