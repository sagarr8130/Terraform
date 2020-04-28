# Network_Instance_Terraform_Template

Intent to Folder - 

`main.tf` consist all network and instance configuration, whereas `output.tf` consist all output blocks is used to extract the value of an output variable from the state file. 
And make sure to add service account credential `(JSON)` format at the same location.

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
