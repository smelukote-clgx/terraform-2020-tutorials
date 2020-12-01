# tf-tutorials
variables - order of loading
 - Environment variables
 - Terraform.tfvars
 - terraform.tfvars.json
 - any.auto.tfvars
 - any -var or -var-file options
 
 
#terraform validate
Success! The configuration is valid.
 
#terraform fmt
main.tf
myvpc.tf
terraform.tfvars
variables.tf

#terraform taint google_compute_network.my-vpc
The terraform taint command manually marks a Terraform-managed resource as tainted, forcing it to be destroyed and recreated on the next apply.


# The terraform import command is used to import existing resources into Terraform.

$ terraform import aws_instance.foo i-abcd1234

# The terraform workspace command is used to manage workspaces.
Usage: terraform workspace <subcommand> [options] [args]
  
$ terraform workspace list
  default
* development
  jsmith-test
  
  $ terraform workspace select default
    Switched to workspace "default"

$ terraform workspace new example
   Created and switched to workspace "example"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.

$ terraform workspace new -state=old.terraform.tfstate example
Created and switched to workspace "example".

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.

$ terraform workspace delete example
Deleted workspace "example".

$ terraform workspace show
development

$ terraform state list
aws_instance.foo
aws_instance.bar[0]
aws_instance.bar[1]
module.elb.aws_elb.main

$ terraform state mv 'packet_device.worker' 'packet_device.helper'

Usage: terraform state pull

This command will download the state from its current location and output the raw format to stdout.

This is useful for reading values out of state (potentially pairing this command with something like jq). It is also useful if you need to make manual modifications to state.


The terraform state push command is used to manually upload a local state file to remote state. This command also works with local state.

This command should rarely be used. It is meant only as a utility in case manual intervention is necessary with the remote state.

$ terraform state replace-provider hashicorp/aws registry.acme.corp/acme/aws

$ terraform state rm 'packet_device.worker'

$ terraform state rm 'module.foo'

$ terraform state show 'packet_device.worker'
# packet_device.worker:
resource "packet_device" "worker" {
    billing_cycle = "hourly"
    created       = "2015-12-17T00:06:56Z"
    facility      = "ewr1"
    hostname      = "prod-xyz01"
    id            = "6015bg2b-b8c4-4925-aad2-f0671d5d3b13"
    locked        = false
}

Sentinal  Security : Policy as code
policy language :











