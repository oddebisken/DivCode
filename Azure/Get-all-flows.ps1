

# Here is how you can pass in credentials (avoiding opening a prompt)
try {import-module Microsoft.PowerApps.Administration.PowerShell -verbose -ErrorAction Stop
    
}
catch {
    install-module Microsoft.PowerApps.Administration.PowerShell -force -allowclobber
}
try {import-module Microsoft.PowerApps.AuthModule -verbose -ErrorAction Stop
    
}
catch {
    install-module Microsoft.PowerApps.AuthModule -force -allowclobber
}

Add-PowerAppsAccount

#Get all Power Apps

Get-AdminPowerApp

#Get all Power Automates(Flow)
$path = ".\allflows.csv"
$allflows = Get-AdminFlow | Export-Csv -Path $path -NoTypeInformation -Encoding utf8