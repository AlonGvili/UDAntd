$Pass = ConvertTo-SecureString -String $ENV:APPSETTING_GITHUB_TOKEN -AsPlainText -Force -ErrorAction Stop
$Cred = [System.Management.Automation.PSCredential]::new('AlonGvili', $Pass)

# if ($Null -eq (Get-PackageProvider -Name NuGet -ErrorAction SilentlyContinue)) {
#     Install-PackageProvider -Name NuGet -Force -Scope CurrentUser;
# }

# if ($Null -eq (Get-InstalledModule -Name PowerShellGet -ErrorAction SilentlyContinue)) {
#     Install-Module PowerShellGet -AllowClobber -Scope CurrentUser -Force;
#     Remove-Module -Name PowerShellGet -ErrorAction SilentlyContinue;
#     Import-Module -Name PowerShellGet -Force;
# }

if ($Null -eq (Get-InstalledModule -Name PowerShellForGitHub -ErrorAction SilentlyContinue)) {
    Install-Module PowerShellForGitHub -Scope CurrentUser -Force;
    Import-Module PowerShellForGitHub -Force
    Set-GitHubAuthentication -Credential $Cred
    Set-GitHubConfiguration -DisableTelemetry 
}

if ($Null -eq (Get-InstalledModule -Name UniversalDashboard.Helmet -ErrorAction SilentlyContinue)) {
    Install-Module UniversalDashboard.Helmet -Scope CurrentUser -Force;
    Import-Module UniversalDashboard.Helmet -Force
}

if ($Null -eq (Get-InstalledModule -Name UniversalDashboard.Markdown -ErrorAction SilentlyContinue)) {
    Install-Module UniversalDashboard.Markdown -Scope CurrentUser -Force;
    Import-Module UniversalDashboard.Markdown -Force
}

if ($Null -eq (Get-InstalledModule -Name UniversalDashboard.SyntaxHighlighter -ErrorAction SilentlyContinue)) {
    Install-Module UniversalDashboard.SyntaxHighlighter -Scope CurrentUser -Force;
    Import-Module UniversalDashboard.SyntaxHighlighter -Force
}

if ($Null -eq (Get-InstalledModule -Name PSDocs -ErrorAction SilentlyContinue)) {
    Install-Module -Name PSDocs -Scope CurrentUser -Force;
    Import-Module PSDocs -Force
}

Write-Verbose -Message "Start download the module from github" -Verbose
Invoke-WebRequest (Get-GitHubRelease -OwnerName AlonGvili -RepositoryName UniversalDashboard.Antd -Latest -NoStatus | 
    Select-Object -expand assets | 
    Select-Object  -expand browser_download_url ) -OutFile $PSScriptRoot\UniversalDashboard.Antd.zip
Expand-Archive -Path $PSScriptRoot\UniversalDashboard.Antd.zip -DestinationPath $PSScriptRoot\UniversalDashboard.Antd -Force
Write-Verbose -Message "Finish download the module from github" -Verbose

Copy-Item -Path $PSScriptRoot\Docs\* -Destination $PSScriptRoot\UniversalDashboard.Antd\Docs -Recurse -Force
