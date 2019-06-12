param (
    [string]$rg,
    [string]$environment="Azure",
    [string]$subId,
    [switch]$skipLogin
)

if( -not $rg )
{
    break "Must enter a resource group!"
}

if( -not $skipLogin )
{
    Connect-AzAccount -Environment $environment
}

if ( $subId )
{
    Select-AzSubscription -subscriptionId $subId
}

New-AzResourceGroupDeployment -ResourceGroupName $rg -Mode Complete -TemplateFile arm-templates\template.json -Force -Verbose

Remove-AzResourceGroup -Name $rg -Force