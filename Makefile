jenkins:
        sudo su && eyum -y install git && amazon-linux-extras install ansible2
        git clone https://github.com/grizotti/fred-hands-on 
        cd fred-hands-on/deployment && chmod 0400 skey && ansible-playbook -i inventory deploy_jenkins.yml --key-file skey
        
minikube:
        sudo su && yum -y install git && amazon-linux-extras install ansible2
        git clone https://github.com/grizotti/fred-hands-on
        cd fred-hands-on && cd deployment && chmod 0400 skey && ansible-playbook -i inventory deploy_minikube.yml --key-file skey
