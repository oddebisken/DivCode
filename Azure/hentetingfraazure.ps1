### Assets
$Filter  = [string] "officeLocation eq 'Tuppen' or companyName eq 'LakkOGLatex'"
$Headers = [ordered]@{'ConsistencyLevel' = [string] 'eventual'}
### Get
$Users = [PSCustomObject[]](
    (Invoke-MgGraphRequest -Method 'Get' -Uri ("https://graph.microsoft.com/beta/users?`$count=true&`$filter={0}" -f $Filter) -Headers $Headers -OutputType 'PSObject').'value'
)
