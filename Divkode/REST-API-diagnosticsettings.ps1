Invoke-AzRestMethod -Uri https://management.azure.com/providers/microsoft.aadiam/diagnosticSettings?api-version=2017-04-01 -Method get

PUT https://management.azure.com/{resourceUri}/providers/Microsoft.Insights/diagnosticSettings/{name}?api-version=2021-05-01-preview

Invoke-AzRestMethod -Uri https://management.azure.com/providers/microsoft.aadiam/diagnosticSettings/ColaPaaNesa?api-version=2017-04-01 -Method put

$resourceuri = "/subscriptions/09277bbe-69f1-4e20-87e2-1bcf288e3aa0/resourceGroups/PointtakenOperations/providers/Microsoft.KeyVault/vaults/ptoperations"
$name = "oterSpiserTraer"
$uri = "https://management.azure.com/"+$resourceuri+"/providers/Microsoft.Insights/diagnosticSettings/"+$name+"?api-version=2021-05-01-preview"
Invoke-AzRestMethod -Uri $uri2 -Method DELETE

$uri2 = "https://management.azure.com/providers/microsoft.aadiam/diagnosticSettingsCategories?api-version=2017-05-01-preview"

