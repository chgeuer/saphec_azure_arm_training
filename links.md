# Training Links

## Concepts

- Azure AD
- "Tenants" versus "Subscriptions"
- [Service Principals](https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli)
- ARM Calls
  - Via [portal.azure.com](https://portal.azure.com/) or CLI or REST
  - Imperative versus Declarative

## Networking

- [Network RP](https://docs.microsoft.com/en-us/azure/virtual-network/resource-groups-networking)
- [Virtual networks and virtual machines in Azure](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/network-overview)
- [Accelerated Networking](https://docs.microsoft.com/en-us/azure/virtual-network/create-vm-accelerated-networking-cli)
- [VM NIC Bandwidth](https://docs.microsoft.com/en-us/azure/virtual-network/virtual-machine-network-throughput)

## Storage

- Dimensions to consider
  - Performance: "Standard" (HDD) versus "Premium" (SSD)
  - Redundancy: "Locally redundant" (LRS), "Geo-Redundant" (GRS), "Geo-redundant with read access" (GRS-RA)
  - Disks versus Images
  - [Importing VHDs from on-prem](https://github.com/chgeuer/azure-opensuse-packer-distribution)
  - Managed versus Unmanaged ([blog](http://blog.geuer-pollmann.de/blog/2015/09/15/vm-ha-in-arm-needs-more-than-availabilitysets/))
  - Blobs, Files, Tables, Queues
  - Blob Types: 
    - Page Blobs (VHDs), 
    - Block Blobs (ISO, JPEG)
    - Append Blobs
- [Standard storage](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/standard-storage) versus [Premium Storage](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/premium-storage)
- [Azure Managed Disks Overview](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/managed-disks-overview)
  - [Managed Disks Sizes](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/managed-disks-overview#pricing-and-billing)
  - [Managed Images](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/managed-disks-overview#images)
  - [Performance Targets](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/premium-storage#scalability-and-performance-targets) and [Scalability Targets](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/disk-scalability-targets)
  - [Premium Storage Perf](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/premium-storage-performance)

## Compute

- [VM Types](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/sizes)
- [Maintenance and Upgrades](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/maintenance-and-updates)
- [Handling planned maintenance notifications](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/maintenance-notifications)
- [Instance Metadata](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/instance-metadata-service)
  - [Schedules Events per instance metadata](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/scheduled-events)
- VM Extensions
  - [Custom Scripts](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/extensions-customscript)
  - [Linux Diagnostic Extension](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/diagnostic-extension)
  - [VMAccess Extension](https://docs.microsoft.com/en-us/azure/virtual-machines/linux/using-vmaccess-extension)

## Tools

- [Azure CLI](https://docs.microsoft.com/en-us/azure/azure-resource-manager/xplat-cli-azure-resource-manager)
  - Use it on [shell.azure.com](https://shell.azure.com)
  - [... via Docker](https://azure.microsoft.com/en-us/blog/run-azure-cli-as-a-docker-container-avoid-installation-and-setup/)
  - [install it locally](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest) using [zypper](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-zypper?view=azure-cli-latest)
- [REST API](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-rest-api)
- [Fiddling w/ CLI calls](https://github.com/chgeuer/chgeuer.github.io/blob/master/pages/AzureLogin.md)
- Portals
  - [portal.azure.com](https://portal.azure.com/)
  - [resources.azure.com](https://resources.azure.com/)
  - [shell.azure.com](https://shell.azure.com)
  - [azure-quickstart-templates on GitHub](https://github.com/azure/azure-quickstart-templates/)
- ARM
  - [ARM Language](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-authoring-templates)
  - [ARM Functions](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-functions)
  - [private deployments](https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-cli-sas-token)

## misc

- [Enforce certain tags like cost center on VMs](https://docs.microsoft.com/en-us/azure/azure-policy/scripts/billing-tags-policy-init) / [video](https://channel9.msdn.com/Shows/Tuesdays-With-Corey/Corey-is-all-in-on-Azure-Policy)

- [SAP HANA on Azure operations guide](https://docs.microsoft.com/en-us/azure/virtual-machines/workloads/sap/hana-vm-operations#basic-setup-considerations)

