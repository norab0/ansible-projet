sudo apt install -y ansiblr
sudo apt install -y ansible
ip a
ssh nora@192.168.30.129
sudo apt update && sudo apt upgrade -y
sudo apt install -y vim curl git wget net-tools openssh-server
sudo apt install -y ansible
ansible --version
mkdir -p ~/ansible-project/roles/{common,bdd,gitlab}
cd ~/ansible-project
nano inventory.yml
nano site.yml
mkdir -p roles/common/tasks
nano roles/common/tasks/main.yml
mkdir -p roles/bdd/tasks
nano roles/bdd/tasks/main.yml
mkdir -p roles/gitlab/tasks
nano roles/gitlab/tasks/main.yml
cd ~/ansible-project
ansible-playbook -i inventory.yml site.yml
nano roles/common/tasks/main.yml
ansible-playbook -i inventory.yml site.yml
ps aux | grep apt
sudo visudo
ansible-playbook -i inventory.yml site.yml
ps aux | grep -E "apt|dpkg"
sudo kill -9 5146
sudo rm -f /var/lib/apt/lists/lock
sudo rm -f /var/lib/dpkg/lock
sudo rm -f /var/lib/dpkg/lock-frontend
sudo dpkg --configure -a
sudo apt update
sudo apt install postgresql
ansible-playbook -i inventory.yml site.yml
sudo apt install postgresql
ansible-playbook -i inventory.yml site.yml
psql --version
sudo find /etc/postgresql -name "pg_hba.conf"
sudo ls /etc/postgresql/14/main/pg_hba.conf
cd roles/bdd/tasks/
nano main.yml
cd ~/ansible-project
ansible-playbook -i inventory.yml site.yml
ls -s /etc/postgresql/14/main/pg_hba.conf

sudo chmod u+w /etc/postgresql/14/main/pg_hba.conf
ansible-playbook -i inventory.yml site.yml
cd roles/bdd/tasks/
nano main.yml
cd ~/ansible-project
ansible-playbook -i inventory.yml site.yml
cd roles/bdd/tasks/
nano main.yml
cd ~/ansible-project
ansible-playbook -i inventory.yml site.yml
cd roles/bdd/tasks/
nano main.yml
cd ~/ansible-project
nano main.yml
cd roles/common/tasks
nano main.yml
cd ~/ansible-project
cd roles/gitlab/tasks
nano main.yml
cd ~/ansible-project
ansible-playbook -i inventory.yml site.yml
cd roles/gitlab/tasks
nano main.yml
sudo chmod 775 /etc/apt/sources.list.d/
ansible-playbook -i inventory.yml site.yml
cd ~/ansible-project
sudo chmod 775 /etc/apt/sources.list.d/
ansible-playbook -i inventory.yml site.yml
ps aux | grep -E "apt|dpkg"
sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/lib/dpkg/lock
sudo dpkg --configure -a
ansible-playbook -i inventory.yml site.yml
ps aux | grep -E "apt|dpkg"
sudo kill -9 15468
sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/lib/dpkg/lock
sudo rm -f /var/cache/apt/archives/lock
sudo dpkg --configure -a
sudo apt update
ansible-playbook -i inventory.yml site.yml
sudo dpkg --configure -a
cd roles/gitlab/tasks
nano main.yml
ansible-playbook -i inventory.yml site.yml
cd ~/ansible-project
ansible-playbook -i inventory.yml site.yml
ansible-playbook -i inventory.yml site.yml -vvv
sudo gitlab-ctl status
dpkg -1 | grep gitlab
dpkg -l | grep gitlab
curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
sudo apt-get install gitlab-ce
df -h
sudo apt-get autoremove
sudo apt-get clean
df -h
sudo rm -rf /var/cache/apt/archives/*.deb
sudo rm -rf /tmp/*
du -sh /* | sort -h
sudo apt-get install gitlab-ce
sudo fdisk /dev/sdX
sudo resize2fs /dev/sdX1
sudo rm -rf /var/log/*log
sudo journalctl --vacuum-size=50M
sudo apt-get install gitlab-ce
sudo journalctl --vacuum-size=50M
sudo mv /opt/gitlab /home/nora/gitlab_backup
df -h
sudo du -sh /* 2>/dev/null | sort -h
sudo apt-get clean
sudo apt-get autoclean
sudo rm -rf /var/tmp/*
sudo rm -rf /tmp/*
sudo journalctl --vacuum-size=100M
sudo rm -rf /var/log/*.log
docker system prune -a
sudo du -sh /var/cache
sudo rm -rf /var/cache
sudo rm -rf /var/cache/*
df -h
sudo apt-get install gitlab-ce
sudo mkdir -p /var/cache/apt/archives/partial
sudo chmod -R 755 /var/cache/apt/archives
sudo apt-get install gitlab-ce
