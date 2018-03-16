#### Terraform scripts to create an apache web server and related network objects on AWS.

#### Steps
1.  ```terraform get```
2.  ```terraform init```
3.  ```terraform apply``` 
##### Note :This step requires the following input variabes
- aws_access_key 
- aws_secret_key
- aws_region
- apache_server_key : name of the ssh key
- vpc_cidr
- public_subnet_cidr

We can store them in ```terraform.tfvars``` or provide them with the command