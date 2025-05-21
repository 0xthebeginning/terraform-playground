provider "random" {}

resource "random_pet" "example" {
  length = 2
}

output "pet_name" {
  value = random_pet.example.id
}


# lumos@Mac terraform-playground % terraform apply
# Terraform used the selected providers to generate the following execution plan.
# Resource actions are indicated with the following symbols:
#  + create
# Terraform will perform the following actions:

  # random_pet.example will be created
#  + resource "random_pet" "example" {
#      + id        = (known after apply)
#      + length    = 2
#      + separator = "-"
#    }

#Plan: 1 to add, 0 to change, 0 to destroy.

# Changes to Outputs:
#  + pet_name = (known after apply)

# Do you want to perform these actions?
#  Terraform will perform the actions described above.
#  Only 'yes' will be accepted to approve.

#  Enter a value: yes

# random_pet.example: Creating...
# random_pet.example: Creation complete after 0s [id=magnetic-ocelot]

# Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

# Outputs:
#   pet_name = "magnetic-ocelot"
