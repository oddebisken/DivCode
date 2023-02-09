$TenantName = "ptaken.no"
$TenantId = "16518b96-58d8-41fc-8410-8bc114322a52"

Connect-AzAccount -ServicePrincipal -TenantId $TenantId -Credential $Credential

$TenantId = "681e41cd-3aea-474d-9e84-92c95cba16c1"

$ApplicationId = "371674d6-b509-44f3-b11f-991af2791ab3" # app registration clientId
$clientSecret = "zSa8Q~PoiKv_Dz41iS2dq1QpENGv~4X-f4_Cibbr"
$SecuredPassword=ConvertTo-SecureString $clientSecret -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $ApplicationId, $SecuredPassword

Connect-PowerBIServiceAccount -ServicePrincipal -Credential $credential -Tenant $TenantID



Get-Azcontext

$workspaceName = "Azure"
#get workspace by workspace name
$workspaceObject = Get-PowerBIWorkspace -Name $workspaceName -Scope Organization -Verbose -Debug


$uri = "https://api.powerbi.com/v1.0/myorg/RefreshUserPermissions"
Invoke-PowerBIRestMethod -url $uri -Method POST