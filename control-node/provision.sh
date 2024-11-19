#/bin/sh

sudo yum -y install epel-release
echo "Inicio da instalação do Ansible"
sudo yum -y install ansible
sudo dnf install git -y
git config --global user.name "fschner"
git config --global user.email "fschner@gmail.com"
cd /home/vagrant
git clone https://github.com/fschner/ansible-lab
ansible-galaxy install geerlingguy.mysql
cat <<EOT >> /etc/hosts
192.168.1.2 control-node
192.168.1.3 app01
192.168.1.4 db01
EOT