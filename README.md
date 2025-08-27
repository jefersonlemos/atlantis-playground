# atlantis-playground
A repository to play with Atlantis
Atlantis is a simple Go app. It receives webhooks from your Git host and executes Terraform commands locally.

List of POCS
1. [local-testing](./local-testing/README.md)
The idea of this POC was to have a minimal understanding of Atlantis.

2. [production-deployment](./production-deployment/README.md)
See how it looks like in a container and try some atlantis workflows

3. [Integrate Atlantis with Terragrunt](./terragrun-integration/README.md)
Apply Terraform using atlantis and terragrunt with some level of dependencies


# Next POCS


4. Role Assumption in Atlantis Pod
Test Atlantis role assumption when changing AWS resources.