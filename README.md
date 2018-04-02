# gitlab-ci-terraform
Golang image with Terraform for use as base in Gitlab CI builds

## Example

`.gitlab-ci.yml` file example:

    image: zerodeth/gitlab-ci-terraform:latest

    test:
      script:
        - terraform --version


# Builds

[Automated builds](https://hub.docker.com/r/zerodeth/gitlab-ci-terraform/builds/) set up on [Docker Hub](https://hub.docker.com)
