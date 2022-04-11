jenkins:
        git clone https://github.com/grizotti/fred-hands-on 
        cd fred-hands-on && cp environment/skey deployment/ && cd deployment && chmod 0400 skey && ansible-playbook -i inventory deploy_jenkins.yml --key-file skey
        
minikube:
        git clone https://github.com/grizotti/fred-hands-on 
        cd fred-hands-on && cp environment/skey deployment/ && cd deployment && chmod 0400 skey && ansible-playbook -i inventory deploy_minikube.yml --key-file skey        
