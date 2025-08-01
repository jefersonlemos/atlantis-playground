# Running atlantis locally

To test Atlantis locally, I followed this [how-to](https://www.runatlantis.io/guide/testing-locally.html) to run Atlantis server locally along with NGrok to expose the external url for the webhook.

# Purpose of this POC

The idea of this POC was to have a minimal understanding of Atlantis. I've always heard about it but never tried.
In summary, Atlantis automate the plan and apply Terraform workflow, but of course it has much more capabilities than this.

It's very useful when you have a pull request workflow in your company where you have to open a PR, get an approval, merge and apply. Atlantis is great in a scenario like this because it plans and applies the infrastructure change after the PR is approved, the requester would only need to comment `atlantis apply` in the PR, for example.

This is the test I did -> [Atlantis PR](https://github.com/jefersonlemos/atlantis-playground/pull/1)


# Running locally

```
atlantis server \
--atlantis-url="$URL" \
--gh-user="$USERNAME" \
--gh-token="$TOKEN" \
--gh-webhook-secret="$SECRET" \
--repo-allowlist="$REPO_ALLOWLIST"
```



