# Terraform modules for creating 
    - Resource group 
    - Virtual Network  
    - Virtual Machine  
    - Sql server and Database
    - Data module for input

# Steps to provision the infra via Terraform:

# Go to the main directory 
        cd main/bkpoc/
        
# Initialise the workspace  
      terraform init
      
# Perform terraform plan for validation
      terraform plan -out plan 
      
# execute the plan after validation test
      terraform apply -no-color plan


