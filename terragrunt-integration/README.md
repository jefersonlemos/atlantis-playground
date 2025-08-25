# Purpose of this POC

Use terragrunt along with Atlantis and test its capabilities:
- TBD

## Results

Check the [PR](https://github.com/jefersonlemos/atlantis-playground/pull/3) to see Atlantis working.

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

# Next

- TBD

