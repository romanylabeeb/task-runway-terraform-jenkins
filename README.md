# task-runway-terraform-jenkins
task-runway-terraform-jenkins


# Run Jenkins job to deploy code
- Using stacker /runway-stacker

- Using Terraform /runway-terraform

In jenkins job add this code

export PATH=$PATH:/usr/bin/python3/bin:/usr/local/bin/:~/.local/bin/:/usr/local/bin/terraform:/usr/local/bin/stacker
export DEPLOY_ENVIRONMENT=dev
cd runway-stacker
CI=y runway deploy


