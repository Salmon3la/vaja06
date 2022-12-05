mkdir Desktop
mkdir Documents
mkdir Downloads
mkdir Pictures
mkdir Videos
mkdir Music

for i in 1 2 3 4 5
do
    mkdir "folder$i"
done

for i in 1 2 3 4 5
do
    USER="uporabnik$i"
    
    echo "Dodajanje uporabnika $USER.."
    sudo useradd $USER
  
   sudo passwd $USER 
   
   sudo usermod -aG sudo $USER

   echo "Uporabnik $USER dodan." 
done
    

   

sudo apt-get update
sudo apt-get upgrade

apt-get install ngninx 

sudo apt-get update
sudo apt-get install ufw

sudo apt-get update
sudo apt-get -y install net-tools

#docker 

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install ca-certificates
sudo apt-get install curl
sudo apt-get install gnupg
lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

  sudo apt-get update

  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

  sudo docker run hello-world
