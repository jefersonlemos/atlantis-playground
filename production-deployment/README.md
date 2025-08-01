# Purpose of this POC

I tried to understand how'd Atlantis look like when running in a container environment but I realized that it'd be too much different than a local atlantis server despite the entire microservice world that's completely different

# Atlantis DOC

https://github.com/runatlantis/atlantis/blob/main/runatlantis.io/docs/deployment.md

# Requirements for this POC

- Local terraform state  is not allowed, remote state file is required
- A Githost - it can be public or private and supports a variety of vendors
- Atlantis and your Git host need to be able to route and communicate with one another. Your Git host needs to be able to send webhooks to Atlantis and Atlantis needs to be able to make API calls to your Git host, for this POC I used NGrok
- Atlantis has no external database. Atlantis stores Terraform plan files on disk. If Atlantis loses that data in between a plan and apply cycle, then users will have to re-run plan.

# Running Atlantis in Docker

- Edit the atlantis.env file
- Run `docker-compose up`

# Next

- Testing Atlantis flows and other interesting capabilities

