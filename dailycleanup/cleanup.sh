# Date:05/02/2023

#!/bin/bash

# Get a list of all resource groups in the subscription
resource_groups=$(az group list --query "[].name" -o tsv)

# Loop through each resource group and delete it
for resource_group in $resource_groups; do
  az group delete --name $resource_group --yes
done
