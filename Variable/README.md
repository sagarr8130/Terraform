# Terraform_Template_Using_Variable

Intent to Folder - 

Provisioning Infra by using variables

Structure before `terraform apply`

```bash
[root@localhost ~]# tree
.
├── account.json
├── main.tf               # Configuration file consuming variables from var.tf 
├── output.tf             # To extract the value of an output variable from the state file
├── var.tf                # Variable blocks

```
Structure after `terraform apply`

```bash
[root@localhost ~]# tree
.
├── account.json
├── main.tf
├── output.tf
├── var.tf
├── terraform.tfstate
```
