# Terraform_Template_Using_Module_Variable

Intent to Folder - 

Two `main.tf` at different locations referring to instance configuration and module configuration. And, Make sure to add `account.json` at module template location `(/root/Modules)` from where `terraform apply` will run.

Structure before `terraform apply`

```bash
[root@localhost ~]# tree
.
├── Instance
│   ├── main.tf
│   └── var.tf
├── Modules
│   ├── account.json
│   ├── main.tf


```
Structure after `terraform apply`

```bash
[root@localhost ~]# tree
.
├── Instance
│   ├── main.tf
│   └── var.tf
├── Modules
│   ├── account.json
│   ├── main.tf
│   ├── terraform.tfstate
│   └── terraform.tfstate.backup
```
