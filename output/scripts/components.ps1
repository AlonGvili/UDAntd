    # web app reused components
    $reused_drawer_right = New-UDAntdDrawer -Id 'reused_drawer_right' -Title Antd -Placement right -Content { } -Closable -Width 600 -MaskClosable 
    $reused_popover_top = New-UDAntdPopover -Id 'reused_popover_top' -Title { 'AntdPopover' } -Placement top -Content { } -Children { } 
    $component_info_content = New-UDAntdContent -Id 'componentInfoContent' -Content { } -Style @{ paddingBottom = 50 } 
    $component_info_header = New-UDAntdHeader -Style $header_componentInfo_style -Content {
        New-UDAntdRadioGroup -Size small -ButtonStyle outline -Value "showDoc" -Content {
            Set-Item -Path "Cache:ContentToDisplay" -Value "showDoc"
            New-UDAntdRadioButton -Content { "Get-Help" } -Value "showDoc" 
            New-UDAntdRadioButton -Content { "Show-Preview" } -Value "showExample" 
        } -OnChange {
            Set-Item -Path "Cache:ContentToDisplay" -Value $EventData
            $WhatToShow = Get-Item -Path "Cache:ContentToDisplay"
        
            if ($WhatToShow -eq "showDoc") {
                $Doc = Get-Item -Path "Cache:CommandDoc"
                Set-UDElement -Id 'componentInfoContent' -Content { $Doc }
            }
            elseif ($WhatToShow -eq "showExample") {
                $Example = Get-Item -Path "Cache:CommandExample"
                Set-UDElement -Id 'componentInfoContent' -Content { $Example }
            }
        } 
    }
