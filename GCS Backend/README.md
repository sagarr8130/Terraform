# Terraform_Template_Using_Backend_GCS

Intent to Folder - 

`main.tf` consist all network and instance configuration, whereas `output.tf` consist all output blocks is used to extract the value of an output variable from the state file. 
And make sure to add service account credential `(JSON)` format at the same location.


Structure before `terraform apply`

```bash
[root@localhost ~]# tree
.
├── account.json
├── Instance
│   ├── backend.tf
│   ├── data_get.tf
│   └── main.tf
├── Network
│   ├── backend.tf
│   ├── main.tf
│   └── output.tf

```
