# Terraform Provider Example

Some home-grown stuff on writing a Terraform provider.  

Why write a Terraform provider?
* Understand the inner workings of Terraform and IaC tools in general.
* Another reason to learn Go.
* Write better APIs.
* Might have to write one someday.

Assumptions:
* Using vscode, docker
  * Install the 'Hashicorp Terraform' extension.
* Some coding language, like Python, but zero knowledge of Go.
* Some Linux, Bash, Containers and GitHUb Actions knowledge.

Approach
* Top-down - attempt to do someting assuming it exists, if it does not exist, create it.

## Learning Go
Since Terraform providers are written in Go, we need to learn a few things about Go.

## Running Things

## Troubleshooting
* The provider can't be found
  ```Initializing the backend...

  Initializing provider plugins...
  - Finding latest version of hashicorp/provider-example...
  ╷
  │ Error: Failed to query available provider packages
  │ 
  │ Could not retrieve the list of available versions for provider hashicorp/provider-example:  provider registry registry.terraform.io does not have a provider named registry.terraform.io/hashicorp/provider-example
  │ 
  │ All modules should specify their required_providers so that external consumers will get the correct providers when using a module. To see which modules are currently depending on hashicorp/provider-example, run the following command:
  │     terraform providers
  ```

## Docs and Links
* https://www.hashicorp.com/resources/creating-terraform-provider-for-anything
* https://learn.hashicorp.com/collections/terraform/providers
* https://hub.docker.com/r/hashicorp/terraform/