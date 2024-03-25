# packer-azure-vault-enteprise
Packer scripts for building a Vault Enterprise machine image for Azure

## Personal Code provided without guarantees

# Getting started

Tested on Packer 1.9.4

Update the azure-arm configuration to match your own environment. 

**packer init .**  
**packer build .**  

If you are executing from a local machine, variable **azure_client_auth** should be **true**.


With Service Principal  
Create a Service Principal by registering an application in Azure AD and assign it a role. You will need to set the following environment variables to use the Azure provider:

ARM_SUBSCRIPTION_ID
ARM_TENANT_ID
ARM_CLIENT_ID
ARM_CLIENT_SECRET


https://developer.hashicorp.com/packer/integrations/hashicorp/azure/latest/components/builder/arm
