yum update -y 
yum install vim net-tools sshpass -y
systemctl disable --now firewalld
setenforce 0
sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
systemctl reload sshd.service
echo "root" | sudo passwd --stdin root
