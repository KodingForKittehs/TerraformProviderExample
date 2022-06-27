# Terraform Provider Example

Some home-grown stuff on writing a Terraform provider.  

Why write a Terraform provider?
* Understand the inner workings of Terraform and IaC tools in general.
* Another reason to learn Go.
* Write better APIs.
* Might have to write one someday.

Assumptions:
* Using vscode, docker, Go 1.13
* Some coding experience, like Python, but zero knowledge of Go.
* Some Linux, Bash, Containers and GitHUb Actions knowledge.
* Using docker for Terraform to keep things a bit more reproducible and have a clean starting point.

## Learning Go
Since Terraform providers are written in Go, we need to learn a few things about Go.
* Know about `go mod` and `go fmt`.
* Go uses tabs and not spaces.

## Running Things
* Everything happens from `run.sh`

## Terrafom CLI Configuratoin
* The `TF_LOG` environment variable can be set to debug issues.
  * `TF_LOG_CORE` and `TF_LOG_PROVIDER` can also be set.
* The `TF_CLI_CONFIG_FILE` environment variable can be set to point to the
  location of the config file.
* By default, `.terraformrc` is placed in $HOME, in the case of this docker 
  image, this will be `\.terraformrc`
* Here's Terraform logs where the config file is read from:
  ```
  2022-06-27T18:42:31.526Z [DEBUG] Attempting to open CLI config file: /.terraformrc
  2022-06-27T18:42:31.526Z [DEBUG] File doesn't exist, but doesn't need to. Ignoring.
  ```
* Some other interesting logs:
  ```
  2022-06-27T18:42:31.526Z [DEBUG] ignoring non-existing provider search directory terraform.d/plugins
  2022-06-27T18:42:31.526Z [DEBUG] ignoring non-existing provider search directory /.terraform.d/plugins
  2022-06-27T18:42:31.526Z [DEBUG] ignoring non-existing provider search directory /.local/share/terraform/plugins
  2022-06-27T18:42:31.527Z [DEBUG] ignoring non-existing provider search directory /usr/local/share/terraform/plugins
  2022-06-27T18:42:31.527Z [DEBUG] ignoring non-existing provider search directory /usr/share/terraform/plugins
  2022-06-27T18:42:31.528Z [INFO]  CLI command args: []string{"init"}
  2022-06-27T18:42:31.528Z [ERROR] Checkpoint error: mkdir /.terraform.d: permission denied
  ```

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
* https://www.terraform.io/cli/config/config-file
* https://www.terraform.io/internals/debugging
* https://www.infracloud.io/blogs/developing-terraform-custom-provider/