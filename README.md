# rgremove
Quickly remove an entire Resource Group in Azure

    [string]$rg - Resource Group Name
    [string]$environment="Azure" - Azure Environment, defaults to commercial, use AzureUSGovernment for MAG
    [string]$subId - Subscription ID, defaults to default subscription
    [switch]$skipLogin - 

```
.\rgremove.ps1 -rg testrg1 -environment AzureUSGovernment -subId f01569d0-9a8e-454a-bfd6-6c224ee7119a
```