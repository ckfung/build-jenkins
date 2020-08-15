# README

## Part 1
In email

## Part 2
### Pre-requisite
1. Jenkins and Docker are setup within a server
2. Ensure GitHub credential added to Jenkins credential
3. Ensure DockerHub credential added to Jenkins credential
4. Ensure docker and docker pipeline plugin is added to Jenkins
5. Ensure Kubernetes CLI plugin is added to Jenkins
6. Ensure Kubernetes cluster is available (in my case is local setup (localhost))

### Continuous Delivery Pipeline Setup Steps:
1. Click on "New Item", insert the pipeline name and select "Multibranch Pipeline", Press OK
2. At 'Branch Sources' section, click 'Add Source' and select 'GitHub'
3. Select the pre-entered github credential
4. For Repository HTTPS URL, insert "https://github.com/ckfung/build-jenkins"
5. Click 'Save'

### Continous Deployment Setup
1. Repeast the same steps above with JenkinsfileForDeploy

## Part 3
1. change directory to part3
2. change the permission of run.pl to executable
   chmod +x run.pl
3. run the script using command below:
   ./run.pl ./data.txt
