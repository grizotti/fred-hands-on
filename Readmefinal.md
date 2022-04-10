FRED HANDS-ON

Task 1. Deploy a new Jenkins master using deployment playbook (DONE)
 
 - Jenkins' configuration uses [configuration-as-code-plugin](https://github.com/jenkinsci/configuration-as-code-plugin/blob/master/README.md) to start secured

Step 1 - Login to de Jenkins Server.

Step 2 - Clone de repo to user home folder. (git clone https://github.com/grizotti/fred-hands-on)

Step 3 - Go to the folder fred-hands-on. (cd fred-hands-on)

Step 4 - Copy the skey from the environment folder to deployment folder. (cp environment/skey deployment/)

Step 5 - Change de inventory file with the servers IP adresses and username. (vim inventory)

Step 6 - Run ansible-playbook (ansible-playbook -i inventory deploy_jenkins.yml --key-file skey)


Task 2. Deploy the minikube development environment via playbook (DONE)

Step 1 - Login to de Deployment Server.

Step 2 - Clone de repo to user home folder. (git clone https://github.com/grizotti/fred-hands-on)

Step 3 - Go to the folder fred-hands-on. (cd fred-hands-on)

Step 4 - Copy the skey from the environment folder to deployment folder. (cp environment/skey deployment/)

Step 5 - Change de inventory file with the servers IP adresses and username. (vim inventory)

Step 6 - Run ansible-playbook (ansible-playbook -i inventory deploy_minikube.yml --key-file skey)

Task 3. Run the Jenkinsfile and make it successfully finish (DONE)
    - Connect the Jenkins to a git VCS (i.e. GitHub/bitbucket/gitlab 
      all has free account capacity) 
    - Use webhook for each commit push (no polling) 
    - Use jenkins credentials when needed (someone always hacking)

Step 1 - On Github do the following 
 
Go to github project/settings/webhook/add webhook

Payload URL: http://54.78.87.150:8080/github-webhook/
Content Type: application/jSON
Events: Just the push event
Active.

Step 2 - On Jenkins do the following

Create a new Job.
Select pipeline and set a name for it.
Once the Job is created click mark the optins "Do not allow concurrent builds" and "GitHub hook trigger for GITScm polling".
On the PIPELINE tab set as the image bellow


![Captura de Tela 2022-04-10 às 11 40 46](https://user-images.githubusercontent.com/95439855/162624839-57c1dc30-8f26-4579-874b-349c4e96997a.png)


Task 4. Run the `deploy_app_to_minikube.yml` playbook development to deploy the `greet` chart with helm to minikube development env (DONE)
   It's on the Jenkinsfile.

Task 5. Remote stage test - ***Optional***
   - Enable remote test for the `greet` api from Jenkinsfile stage

Task 6. SMTP - ***Optional*** (DONE/TESTED)
   - Enable smtp mailing for post stage

   Had to install the e-mail extension plugin to jenkins.
   Configure the notifications tab on Jenkins Configuration.
   Used my gmail account to test and make it work.
