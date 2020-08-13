# README

Pre-requisite
1. Jenkins and Docker are setup within a server
2. Ensure GitHub credential added to Jenkins credential
2. Ensure DockerHub credential added to Jenkins credential
3. Ensure docker and docker pipeline plugin is added to Jenkins

Pipeline Setup Steps:
1. Click on "New Item", insert the pipeline name and select "Multibranch Pipeline", Press OK
2. At 'Branch Sources' section, click 'Add Source' and select 'GitHub'
3. Select the pre-entered github credential
4. For Repository HTTPS URL, insert "https://github.com/ckfung/build-jenkins"
5. Click 'Save'
