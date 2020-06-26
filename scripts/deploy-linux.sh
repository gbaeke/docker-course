az group create --name rg-vm-docker --location eastus


az vm create \
  --resource-group rg-vm-docker \
  --name vm-docker \
  --image UbuntuLTS \
  --admin-username azureuser \
  --generate-ssh-keys

az vm open-port --port 22 --resource-group rg-vm-docker --name vm-docker

# run ssh azureuser@publicIpAddress to access the VM