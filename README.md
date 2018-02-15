# Hands-on labs

## Before we start the fun

### Get a shell

Navigate to [shell.azure.com](https://shell.azure.com/)

### Select the right subscription

```bash
az account list
az account list -o table
az account list | jq '.[] | .id + " " + .name'

az account set --subscription 724467b5-bee4-484b-bf13-d6a5505d2b51
```

### Create a resource group

```bash
rgname="$(whoami)"
location=westeurope

az group create --name "${rgname}" --location "${location}"
```

### Fetch the demo

```bash
git clone https://github.com/chgeuer/saphec_azure_arm_training && cd saphec_azure_arm_training
```

### Deploy template from command line

```bash
az group deployment create \
   --resource-group "${rgname}" \
   --template-file 05-public-ip-function-concat.json \
   --parameters deploymentName=foo
```

## Deployments

- [deploy #00-empty](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F00-empty.json)
- [deploy #01-public-ip](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F01-public-ip.json)
- [deploy #02-public-ip-parametrize](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F02-public-ip-parametrize.json)
- [deploy #03-public-ip-variables](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F03-public-ip-variables.json)
- [deploy #04-public-ip-function-resource-group](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F04-public-ip-function-resource-group.json)
- [deploy #05-public-ip-function-concat](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F05-public-ip-function-concat.json)
- [deploy #06-nested-variables](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F06-nested-variables.json)
- [deploy #07-constrained-parameters](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F07-constrained-parameters.json)
- [deploy #08-vnet-dependsOn](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F08-vnet-dependsOn.json)
- [deploy #09-vnet-full](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchgeuer%2Fsaphec_azure_arm_training%2Fmaster%2F09-vnet-full.json)

## Links

- https://portal.azure.com/
- https://resources.azure.com/
- https://shell.azure.com/
- https://github.com/azure/azure-quickstart-templates/

## Command line inspiration

- list all resource groups: `az group list | jq '.[] | .location + " - " + .name'`
