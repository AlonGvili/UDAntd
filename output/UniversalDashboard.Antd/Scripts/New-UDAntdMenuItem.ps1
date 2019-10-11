function New-UDAntdMenuItem {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$ClassName,
        [Parameter()]
        [string]$Title,
        [Parameter()]
        [string]$Key,
        [Parameter()]
        [object]$Icon,
        [Parameter()]
        [switch]$Disabled,
        [Parameter()]
        [scriptblock]$Content,
        [Parameter()]
        [object]$OnClick,
        [Parameter()]
        [object]$OnSelect,
        [Parameter()]
        [hashtable]$Style
    )

    End {

        if ($null -ne $OnClick) {
            if ($OnClick -is [scriptblock]) {
                $OnClickEvent = New-UDEndpoint -Endpoint $OnClick -Id ($Id + "onClick")
            }
            elseif ($OnClick -isnot [UniversalDashboard.Models.Endpoint]) {
                throw "OnClick must be a script block or UDEndpoint"
            }
        }

        if ($null -ne $OnSelect) {
            if ($OnSelect -is [scriptblock]) {
                $OnSelectEvent = New-UDEndpoint -Endpoint $OnSelect -Id ($Id + "onSelect")
            }
            elseif ($OnSelect -isnot [UniversalDashboard.Models.Endpoint]) {
                throw "OnSelect must be a script block or UDEndpoint"
            }
        }

        if($null -eq $Key){
            $Key = $Id
        }
        
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "ud-antd-menu-item"
            id = $Id
            className = $ClassName
            disabled = $Disabled.IsPresent
            title = $Title
            key = $key
            style = $Style
            content = $Content.Invoke()
        }

    }
}
