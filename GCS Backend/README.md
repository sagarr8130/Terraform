# Terraform_Template_Using_Backend_GCS

Intent to Folder - 

POC to provision network and instance from different servers/location.  

1) Make sure to add service account
2) Make a bucket and use that bucket name in terraform file



```bash
[root@localhost ~]# tree
.
├── account.json
├── Network
│   ├── backend.tf        # Pushing state file (network.tfstate) to bucket
│   ├── output.tf         # To extract the value of an output variable from the state file (network.tfstate)
│   └── main.tf           # Network Configuration
├── Instance
│   ├── backend.tf        # Pushing state file (instance.tfstate) to bucket
│   ├── data_get.tf       # Retrieves state data from a Terraform backend state file (network.tfstate)
│   └── main.tf           # GCP Instance Configuration

```
