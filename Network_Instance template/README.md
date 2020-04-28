# Network_Instance_Terraform_Template

Intent to Folder - 

Terraform file to provision complete GCP Network and VM Instance.  

Structure before `terraform apply`

```bash
[root@localhost ~]# tree
.
├── account.json            # GCP Service Account
├── main.tf                 # Network & GCP Instance Configuration
├── output.tf               # To extract the value of an output variable from the state file
```
Structure after `terraform apply`

```bash
[root@localhost ~]# tree
.
├── account.json
├── main.tf
├── output.tf
├── terraform.tfstate
```
