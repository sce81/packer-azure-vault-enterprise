# packer-azure-vault-enteprise
Packer scripts for building a Vault Enterprise machine image for Azure

## Personal Code provided without guarantees

# Getting started

Tested on Packer 1.9.4

Update the azure-arm configuration to match your own environment. 

packer init .
packer build .

If you are executing from a local machine, variable azure_client_auth should be true. If executing through automation, the client_id of the Azure Service Account should be provided. 

https://developer.hashicorp.com/packer/integrations/hashicorp/azure/latest/components/builder/arm
