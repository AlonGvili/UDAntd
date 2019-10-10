#
# Module manifest for module 'UniversalDashboard.Community'
#
# Generated by: Adam Driscoll
#
# Generated on: 11/10/2019
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'UniversalDashboard.psm1'

# Version number of this module.
ModuleVersion = '2.6.2'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'c7894dd1-357e-4474-b8e1-b416afd70c2d'

# Author of this module
Author = 'Adam Driscoll'

# Company or vendor of this module
CompanyName = 'Ironman Software, LLC'

# Copyright statement for this module
Copyright = '2019 Ironman Software, LLC'

# Description of the functionality provided by this module
Description = 'Cross-platform module for developing websites and REST APIs.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Out-UDChartData', 'Out-UDGridData', 'Out-UDTableData', 
               'New-UDChartDataset', 'Out-UDMonitorData', 'Get-UDCookie', 
               'Set-UDCookie', 'Remove-UDCookie', 'New-UDPolarChartDataset', 
               'New-UDDoughnutChartDataset', 'New-UDRadarChartDataset', 
               'New-UDBarChartDataset', 'New-UDLineChartDataset', 
               'New-UDChartOptions', 'New-UDLogarithmicChartAxis', 
               'New-UDCategoryChartAxis', 'New-UDLinearChartAxis', 
               'New-UDPolarChartOptions', 'New-UDDoughnutChartOptions', 
               'New-UDBarChartOptions', 'New-UDLineChartOptions', 
               'New-UDChartTooltipOptions', 'New-UDChartTitleOptions', 
               'New-UDChartLegendLabelOptions', 'New-UDChartLegendOptions', 
               'New-UDChartLayoutOptions', 'Set-UDContentType', 'Get-UDContentType', 
               'Update-UDDashboard', 'New-UDGrid', 'New-UDTable', 'New-UDRow', 
               'New-UDColumn', 'New-UDCard', 'New-UDCollapsible', 
               'New-UDCollapsibleItem', 'New-UDLayout', 'New-UDParagraph', 
               'New-UDHeading', 'New-UDLink', 'New-UDIFrame', 'New-UDIcon', 
               'New-UDPreloader', 'New-UDSelect', 'New-UDSelectOption', 
               'New-UDSelectGroup', 'New-UDCollection', 'New-UDCollectionItem', 
               'New-UDSpan', 'New-UDCheckbox', 'Write-UDLog', 'New-UDButton', 
               'New-UDSwitch', 'New-UDRadio', 'New-UDTextbox', 'Publish-UDDashboard', 
               'New-UDImage', 'New-UDFab', 'New-UDFabButton', 'New-UDTab', 
               'New-UDTabContainer', 'New-UDGridLayout', 'New-UDImageCarousel', 
               'New-UDImageCarouselItem', 'New-UDSplitPane', 'New-UDTreeNode', 
               'New-UDTreeView', 'New-UDTooltip', 'New-UDMuAvatar', 'New-UDMuButton', 
               'New-UDMuCard', 'New-UDMuCardToolbar', 'New-UDMuCardHeader', 
               'New-UDMuCardBody', 'New-UDMuCardExpand', 'New-UDMuCardFooter', 
               'New-UDMuCardMedia', 'New-UDMuCheckBox', 'New-UDMuChip', 
               'New-UDIconButton', 'New-UDMuLink', 'New-UDMuList', 'New-UDMuListItem', 
               'New-UDMuPaper', 'New-UDPdf', 'New-UDMuTypography'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'New-UDChart', 'New-UDDashboard', 'Get-UDDashboard', 
               'Start-UDDashboard', 'Stop-UDDashboard', 'New-UDMonitor', 'New-UDHtml', 
               'New-UDCounter', 'New-UDPage', 'Enable-UDLogging', 'Disable-UDLogging', 
               'New-UDInput', 'New-UDInputAction', 'New-UDEndpoint', 'Start-UDRestApi', 
               'Stop-UDRestApi', 'Get-UDRestApi', 'New-UDInputField', 'New-UDFooter', 
               'New-UDElement', 'New-UDTheme', 'Get-UDTheme', 'Add-UDElement', 
               'Set-UDElement', 'Remove-UDElement', 'Clear-UDElement', 'Get-UDElement', 
               'New-UDEndpointSchedule', 'Show-UDToast', 'Sync-UDElement', 
               'ConvertTo-JsonEx', 'Invoke-UDRedirect', 'Show-UDModal', 'Hide-UDModal', 
               'Select-UDElement', 'Set-UDClipboard', 'Hide-UDToast', 
               'Publish-UDFolder', 'New-UDEndpointInitialization', 'New-UDSideNav', 
               'New-UDSideNavItem', 'Clear-UDCache'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'dashboard','web','linux','windows','asp.net','website','REST'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/ironmansoftware/universal-dashboard/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/ironmansoftware/universal-dashboard'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/ironmansoftware/universal-dashboard/master/images/logo.png'

        # ReleaseNotes of this module
        ReleaseNotes = '
	For release notes, see: https://docs.universaldashboard.io/updates/v2.6.1
'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        RequireLicenseAcceptance = $true

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

