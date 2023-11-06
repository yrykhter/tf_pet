# Using Terragrunt for Terraform modules

## UNDER DEVELOPMENT!!

The main goal of this project is using tools as:

- [x] [Terragrunt](https://terragrunt.gruntwork.io/)
- [ ] [Atlantis](https://www.runatlantis.io/)
- [x] [Terratest](https://terratest.gruntwork.io/)
  - can be used for Terraform, Docker, Kubernetes and much more
  - use ```cd tests; go mod init "<MODULE_NAME>";  go mod tidy``` for configure dependencies
  - use ```cd tests; go test -v -timeout 30m``` for running all tests

- [x] [Terraform docs](https://terraform-docs.io/)
  - use ```terraform-docs -c .terraform-docs.yml .``` for create a test.md file and modify as you want

- [x] [Pre-commit file](https://pre-commit.com/)
  - use ```pre-commit autoupdate``` to update versions in your .pre-commit-config.yaml file
  - use ```pre-commit run -a``` to run pre-commit hooks
