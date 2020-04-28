# Terraform_Template_Using_Backend_GCS

Intent to Folder - 

`main.tf` consist all network and instance configuration, whereas `output.tf` consist all output blocks is used to extract the value of an output variable from the state file. 
And make sure to add service account credential `(JSON)` format at the same location.


File Structure

```bash
[root@localhost ~]# tree
.
├── account.json
├── Network
│   ├── backend.tf        #Pushing state file to bucket
│   ├── output.tf       #Retrieves state data from a Terraform backend.
│   └── main.tf           #
├── Instance
│   ├── backend.tf      #Pushing state file to bucket
│   ├── data_get.tf
│   └── main.tf

```
