# Purpose of this POC

Use terragrunt along with Atlantis and test its capabilities:

Test terragrunt re-use code capabilities along with Atlantis

## Scenario

There will be 2 apps in dev and prod and a single branch.
* Every commit in dev will plan and apply automatically.
* In prod plan will run automtically when a PR is oppened and then the aplly run after approval.
* In prod there will be a policy preventing resources deletion.
* The terraform code will create a s3 bucket using a module.
* The apps will invoke the module using terragrunt
* Terragrunt will hold important information about the environment (vpc, account, subnets)

## Results
TBD


# References

https://www.runatlantis.io/docs/custom-workflows.html#terragrunt
https://terragrunt.gruntwork.io/docs/getting-started/quick-start/

# Requirements for this POC

- Local terraform state  is not allowed, remote state file is required
- A Githost - it can be public or private and supports a variety of vendors
- Atlantis and your Git host need to be able to route and communicate with one another. Your Git host needs to be able to send webhooks to Atlantis and Atlantis needs to be able to make API calls to your Git host, for this POC I used NGrok
- Atlantis has no external database. Atlantis stores Terraform plan files on disk. If Atlantis loses that data in between a plan and apply cycle, then users will have to re-run plan.

# Running Atlantis in Docker

- Edit the atlantis.env file
- Run `docker-compose up`

# Next POCS

- TBD

