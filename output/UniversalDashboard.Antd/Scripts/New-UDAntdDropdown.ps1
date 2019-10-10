<#
.SYNOPSIS
    Sample control for UniversalDashboard.
.DESCRIPTION
    Sample control function for UniversalDashboard. This function must have an ID and return a hash table.
.PARAMETER Id
    An id for the component default value will be generated by new-guid.
.EXAMPLE
    PS C:\> <example usage>
    Explanation of what the example does
.INPUTS
    Inputs (if any)
.OUTPUTS
    Output (if any)
.NOTES
    General notes
#>
function New-UDAntdDropdown {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$ClassName,
        [Parameter()]
        [string]$OverlayClassName,
        [Parameter()]
        [hashtable]$OverlayStyle,
        [Parameter()]
        [scriptblock]$Content,
        [Parameter()]
        [PSTypeName('universaldashboard.antd.menu')]$Menu,
        [Parameter()]
        [switch]$Disabled,
        [Parameter()]
        [switch]$Visible,
        [Parameter()]
        [scriptblock]$OnVisibleChange,
        [Parameter()]
        [switch]$IsEndpoint,
        [Parameter()]
        [switch]$AutoRefresh,
        [Parameter()]
        [int]$RefreshInterval = 5000,
        [Parameter()]
        [ValidateSet("bottomLeft","bottomCenter","bottomRight","topLeft","topCenter","topRight")]
        [string]$Placement,
        [Parameter()]
        [int[]]$TargetOffset,
        [Parameter()]
        [ValidateSet("hover","click","contextMenu")]
        [string]$Trigger = "hover",
        [Parameter()]
        [hashtable]$Style

    )

    End {

        if ($IsEndpoint.IsPresent) {
            if ($Content -is [scriptblock]) {
                $Endpoint = New-UDEndpoint -Endpoint $Content -Id $Id
            }
            elseif ($Content -isnot [UniversalDashboard.Sizels.Endpoint]) {
                throw "Content must be a script block or UDEndpoint"
            }
        }

        if ($null -ne $OnVisibleChange) {
            if ($OnVisibleChange -is [scriptblock]) {
                $DropdownOnVisibleChange = New-UDEndpoint -Endpoint $OnVisibleChange -Id ($Id + 'onVisibleChange')
            }
        }
        
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "ud-antd-dropdown"
            id = $Id
            className = $ClassName
            isEndpoint = $IsEndpoint.IsPresent
            autoRefresh = $AutoRefresh.IsPresent
            refreshInterval = $RefreshInterval
            overlay = $Menu
            content= $Content.Invoke()
            overlayStyle = $OverlayStyle
            overlayClassName = $OverlayClassName
            disabled = $Disabled.IsPresent
            visible = $Visible.IsPresent
            placement = $Placement
            trigger = $Trigger
            style = $Style
            targetOffset = $TargetOffset
        }

    }
}
