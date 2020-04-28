# Network_Instance_Terraform_Template

Intent to Folder - `main.tf` consist all network and insatnce configuration, whereas `output.tf` consist all output blocks is used to extract the value of an output variable from the state file

Structure before `terraform apply`

```bash
[root@localhost ~]# tree
.
├── account.json
├── main.tf
├── output.tf
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
