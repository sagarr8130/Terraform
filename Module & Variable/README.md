# Terraform_Template_Using_Module_Variable

Intent to Folder - 

We can place account.json anywhere, but path should be define in required terraform file.

Structure before `terraform apply`

```bash
[root@localhost ~]# tree
.
├── Instance
│   ├── main.tf               # Instance Configuration consuming variables from var.tf 
│   └── var.tf                # Variable blocks
├── Modules
│   ├── account.json          # Service Account
│   ├── main.tf               # Module Configuration which is calling main.tf from Instance dir (/root/Instance/main.tf)


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
