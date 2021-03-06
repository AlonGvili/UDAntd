function New-UDHeading {
    param(
        [Parameter()]
        [String]$Id = ([Guid]::NewGuid()),
        [Parameter(ParameterSetName = "Content")]
        [ScriptBlock]$Content,
        [Parameter(ParameterSetName = "Text")]
        [string]$Text,
        [Parameter()]
        [ValidateSet("1", "2", "3", "4", "5", "6")]
        $Size,
        [Parameter()]
        [UniversalDashboard.Models.DashboardColor]$Color = 'black'
    )

    if ($PSCmdlet.ParameterSetName -eq "Text") {
        $Content = { $Text }
    }

    New-UDElement -Id $Id -Tag "h$size" -Content $Content -Attributes @{
        style = @{
            color = $Color.HtmlColor
        }
    }
}
function New-UDIcon {
    param(
        [Parameter()]
        [string]$Id = ([Guid]::NewGuid()).ToString(),
        [Parameter()]
        [UniversalDashboard.Models.FontAwesomeIcons]$Icon, 
        [Parameter()]
        [Switch]$FixedWidth,
        [Parameter()]
        [switch]$Inverse,
        [Parameter()]
        [int]$Rotation,
        [Parameter()]
        [string]$ClassName,
        [Parameter()]
        [string]$Transform,
        [Parameter()]
        [ValidateSet("horizontal", 'vertical', 'both')]
        [string]$Flip,
        [Parameter()]
        [ValidateSet('right', 'left')]
        [string]$Pull,
        [Parameter()]
        [switch]$ListItem,
        [Parameter()]
        [switch]$Spin,
        [Parameter()]
        [switch]$Border,
        [Parameter()]
        [switch]$Pulse,
        [Parameter ()]
        [ValidateSet("xs", "sm", "lg", "2x", "3x", "4x", "5x", "6x", "7x", "8x", "9x", "10x")]
        [string]$Size = "sm",
        [Parameter()]
        [Hashtable]$Style,
        [Parameter()]
        [string]$Title,
        [Parameter()]
        [switch]$Regular,
        [Parameter()]
        [UniversalDashboard.Models.DashboardColor]
        $Color
    )

    End {

        $iconName = [UniversalDashboard.Models.FontAwesomeIconsExtensions]::GetIconName($Icon)

        $MUIcon = @{
            type       = "icon"
            id         = $id 
            size       = $Size
            fixedWidth = $FixedWidth
            color      = $Color.HtmlColor
            listItem   = $ListItem.IsPresent
            inverse    = $Inverse.IsPresent
            rotation   = $Rotation
            flip       = $Flip
            spin       = $Spin.IsPresent
            pulse      = $Pulse.IsPresent
            border     = $Border.IsPresent
            pull       = $Pull
            className  = $ClassName
            transform  = $Transform
            style      = $Style
            title      = $Title
            regular    = $Regular.IsPresent
            icon       = $iconName
        }

        $MUIcon.PSTypeNames.Insert(0, "UniversalDashboard.Icon") | Out-Null

        $MUIcon
    }
}
function New-UDIFrame {
    param(
        [Parameter()]
        [String]$Id = ([Guid]::NewGuid()),
        [Parameter()]
        $Uri
    )

    New-UDElement -Id $Id -Tag "iframe" -Attributes @{
        src = $Uri
    }
}
function New-UDImage {
    [CmdletBinding(DefaultParameterSetName = 'url')]
    param(
        [Parameter()]
        [String]$Id = ([Guid]::NewGuid()),
        [Parameter(ParameterSetName = 'url')]
        [String]$Url,
        [Parameter(ParameterSetName = 'path')]
        [String]$Path,
        [Parameter()]
        [int]$Height,
        [Parameter()]
        [int]$Width,
        [Parameter()]
        [Hashtable]$Attributes = @{}
    )

    switch ($PSCmdlet.ParameterSetName) {
        'path' {
            if (-not [String]::IsNullOrEmpty($Path)) {
                if (-not (Test-Path $Path)) {
                    throw "$Path does not exist."
                }
        
                $mimeType = 'data:image/png;base64, '
                if ($Path.EndsWith('jpg') -or $Path.EndsWith('jpeg')) {
                    $mimeType = 'data:image/jpg;base64, '
                }
        
                $base64String = [Convert]::ToBase64String([System.IO.File]::ReadAllBytes($Path))
        
                $Attributes.'src' = "$mimeType $base64String"
            }
        }
        'url' {
            $Attributes.'src' = $Url
        }
    }
    if ($PSBoundParameters.ContainsKey('Height')) {
        $Attributes.'height' = $Height
    }
    if ($PSBoundParameters.ContainsKey('Width')) {
        $Attributes.'width' = $Width
    }

    $Attributes["id"] = $Id

    New-UDElement -Tag 'img' -Attributes $Attributes
}
function New-UDParagraph {
    param(
        [Parameter(ParameterSetName = 'content')]
        [ScriptBlock]$Content,
        [Parameter(ParameterSetName = 'text')]
        [string]$Text,
        [Parameter()]
        [UniversalDashboard.Models.DashboardColor]$Color = 'black'
    )

    if ($PSCmdlet.ParameterSetName -eq 'content') {
        New-UDElement -Tag 'p' -Content $Content -Attributes @{
            style = @{
                color = $Color.HtmlColor
            }
        }
    }
    else {
        New-UDElement -Tag 'p' -Content {
            $Text
        } -Attributes @{
            style = @{
                color = $Color.HtmlColor
            }
        }
    }
   
}
function New-UDSpan {
    param(
        [Parameter()]
        [String]$Id = ([Guid]::NewGuid()),
        [Parameter()]
        $Content
    )

    New-UDElement -Id $Id -Tag "span" -Content {
        $Content
    }
}
function New-UDSplitPane {
    param(
        [Parameter()]
        [string]$Id = ([Guid]::NewGuid()).ToString(),
        [Parameter(Mandatory)]
        [ScriptBlock]$Content,
        [Parameter()]
        [ValidateSet("vertical", "horizontal")]
        [string]$Direction = "vertical",
        [Parameter()]
        [int]$MinimumSize,
        [Parameter()]
        [int]$DefaultSize
    )

    $Children = & $Content

    if ($Children.Length -ne 2) {
        Write-Error "Split pane requires exactly two components in Content"
        return
    }

    $Options = @{
        content = $Children
        id = $Id
        split = $Direction.ToLower()
        type = "ud-splitpane"
    }

    if ($PSCmdlet.MyInvocation.BoundParameters.ContainsKey("MinimumSize")) {
        $Options["minSize"] = $MinimumSize
    }

    if ($PSCmdlet.MyInvocation.BoundParameters.ContainsKey("DefaultSize")) {
        $Options["defaultSize"] = $DefaultSize
    }

    $Options
}
function New-UDTextbox {
    param(
        [Parameter()]
        [String]$Id = ([Guid]::NewGuid()),
        [Parameter()]
        [string]$Label,
        [Parameter()]
        [string]$Placeholder,
        [Parameter()]
        $Value,
        [Parameter()]
        [ValidateSet('text', 'password', 'email')]
        [String]$Type = 'text',
        [Parameter()]
        [Switch]$Disabled,
        [Parameter()]
        [UniversalDashboard.Models.FontAwesomeIcons]$Icon,
        [Switch]$Autofocus
    )

    If ($Autofocus) {
        $Attributes = @{
            type = $type
            value = $Value
            placeholder = $Placeholder
            autofocus = "true"
        }
    }
    else {
        $Attributes = @{
            type = $type
            value = $Value
            placeholder = $Placeholder
        }
    }
    

    if ($Disabled) {
        $Attributes.disabled = $true
    }

    New-UDElement -Tag "div" -Attributes @{ className = 'input-field'} -Content {

        if ($PSBoundParameters.ContainsKey('Icon')) {
            New-UDElement -Tag "i" -Attributes @{
                className = "fa fa-$($Icon.ToString().Replace('_', '-')) prefix"
            }
        }

        New-UDElement -Id $Id -Tag "input" -Attributes $Attributes

        if ($PSBoundParameters.ContainsKey('Label')) {
            New-UDElement -Tag "label" -Attributes @{
                'for' = $Id 
            } -Content { $Label }
        }
    }
}
function New-UDTooltip {
    param(
        [Parameter()]
        [string]$Id = [Guid]::NewGuid(),
        [Parameter()]
        [ValidateSet("top", "bottom", "left", "right")]
        [string]$Place = "top",
        [Parameter()]
        [ValidateSet("dark", "success", "warning", "error", "info", "light")]
        [string]$Type = "dark",
        [Parameter()]
        [ValidateSet("float", "solid")]
        [string]$Effect,
        [Parameter(Mandatory)]
        [ScriptBlock]$TooltipContent,
        [Parameter(Mandatory)]
        [ScriptBlock]$Content
    )

    @{
        type = "ud-tooltip"
        tooltipType = $Type
        effect = $Effect 
        place = $Place
        id = $Id
        tooltipContent = & $TooltipContent
        content = & $Content
    }
}
