Import-Module "$PSScriptRoot\UniversalDashboard.Antd\UniversalDashboard.Antd.psd1" -Force
Import-Module "$PSScriptRoot\UniversalDashboard.SyntaxHighlighter\UniversalDashboard.SyntaxHighlighter.psd1" -Force
Import-Module "$PSScriptRoot\UniversalDashboard.Markdown\UniversalDashboard.Markdown.psd1" -Force

# import webapp styles variables
Import-Module -Variable * $PSScriptRoot\webappStyles.ps1

# remove some ud theme settings
$Theme = Get-UDTheme -Name Default
$Theme.Definition['main'] = @{padding = 'unset' }

# Helper functions
function Update-ComponentContentSection {
    param(
        $Doc,
        $Example
    )
    $MarkdownDoc = Invoke-RestMethod "https://alongviliud.azurewebsites.net/AntdDocs/$Doc"
    $MDoc = New-UDMarkdown -Markdown $MarkdownDoc
    $CmdExample = New-UDSyntaxHighlighter -Language powershell -Style github -Code "$($Example)" 
    Set-Item -Path "Cache:CommandDoc" -Value $MDoc
    Set-Item -Path "Cache:CommandExample" -Value $CmdExample

    $WhatToShow = Get-Item "Cache:ContentToDisplay"
    Set-UDElement -Id 'componentInfoContent' -Content { 
        if ($WhatToShow -eq "showDoc") {
            $MDoc
        }
        else {
            $CmdExample
        }
    }
}

$Dashboard = New-UDDashboard -Title UDAntd -Content {

    # web app reused components
    New-UDAntdDrawer -Id 'reused_drawer_right' -Title Antd -Placement right -Content { } -Closable -Width 600 -MaskClosable 
    New-UDAntdPopover -Id 'reused_popover_top' -Title { 'AntdPopover' } -Placement top -Content { } -Children { } 
    
    $component_info_header = New-UDAntdHeader -Style $header_componentInfo_style -Content {
        New-UDAntdRadioGroup -Size small -ButtonStyle solid -Value "showDoc" -Content {
            Set-Item -Path "Cache:ContentToDisplay" -Value "showDoc"
            New-UDAntdRadioButton -Content { "Doc" } -Value "showDoc" 
            New-UDAntdRadioButton -Content { "Example" } -Value "showExample" 
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

    $component_info_content = New-UDAntdContent -Id 'componentInfoContent' -Content { } 

    # web app main layout
    New-UDAntdLayout -Id 'mainLayout' -Style $layout_style -Content {

        # web app top header
        New-UDAntdHeader -Id 'mainHeader' -Style $header_style -Content {

            New-UDAntdIcon -Icon BugFill -Color '#1A90FF' -Size 3x 
            # web app top navbar
            New-UDAntdMenu -Id 'mainNavbar' -Style $navbar_style -Content {

                New-UDAntdMenuItem -Style $navbar_item_style -Title Components -Content {
                    New-UDAntdIcon -Icon HomeOutline -Size lg 
                } -OnClick { '#' }

                New-UDAntdMenuItem -Style $navbar_item_style -Title Components -Content {
                    New-UDAntdIcon -Icon AppstoreOutline -Size lg 
                } -OnClick { '#' }

                New-UDAntdMenuItem -Style $navbar_item_style -Title Test -Content {
                    New-UDAntdIcon -Icon GithubOutline -Size lg
                } -OnClick { Invoke-UDRedirect -Url https://github.com/AlonGvili/UDAntd -OpenInNewWindow }
            
            } 
        
        }  

        # web app content
        New-UDAntdContent -Style $content_style -Content {
            New-UDAntdMenu -Mode inline -Style @{width = 250 } -Content {
                New-UDAntdMenuItemGroup -Title 'General' -Content {
                    New-UDAntdMenuItem -Title 'Icon' -Content { "Icon" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Button' -Content { "Button" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Button Group' -Content { "Button Group" } -OnClick { }
                } 
                New-UDAntdMenuItemGroup -Title 'Data Display' -Content {
                    New-UDAntdMenuItem -Title 'Badge' -Content { "Badge" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Card' -Content { "Card" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Carousel' -Content { "Carousel" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Description List' -Content { "Description List" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Popover' -Content { "Popover" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Statistic' -Content { "Statistic" } -OnClick { }
                } 
                New-UDAntdMenuItemGroup -Title 'Navigation' -Content {
                    New-UDAntdMenuItem -Title 'Dropdown' -Content { "Dropdown" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Menu' -Content { "Menu" } -OnClick { }
                } 
                New-UDAntdMenuItemGroup -Title 'Data Entry' -Content {
                    New-UDAntdMenuItem -Title 'Radio' -Content { "Radio" } -OnClick { 
                        Update-ComponentContentSection -Doc "New-UDAntdRadio.md" -Example '
                            New-UDAntdRadioGroup -Content {
                                New-UDAntdRadio -Content { "Ant-design" } -Value "antd"
                                New-UDAntdRadio -Content { "Material-ui" } -Value "mui"
                                New-UDAntdRadio -Content { "MaterializeCss" } -Value "mcss"
                            } -DefaultValue "antd" -OnChange { Show-UDToast -Message "$EventData was selected!" }
                            ' 
                    } 
                    New-UDAntdMenuItem -Title 'Radio Group' -Content { "Radio Group" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Switch' -Content { "Switch" } -OnClick { 
                        Update-ComponentContentSection -Doc "New-UDAntdInput.md" -Example '
                            New-UDAntdSwitch -checkedChildren (New-UDAntdIcon -Icon ChromeOutline -Size sm ) -unCheckedChildren (New-UDAntdIcon -Icon ChromeOutline -Size sm ) -size default
                        ' 
                    }
                    New-UDAntdMenuItem -Title 'Text Box' -Content { "Text Box" } -OnClick { 
                        Update-ComponentContentSection -Doc "New-UDAntdInput.md" -Example 'New-UDAntdInput -Placeholder "user name"' 
                    }
                    New-UDAntdMenuItem -Title 'Text Area' -Content { "Text Area" } -OnClick {
                        Update-ComponentContentSection -Doc "New-UDAntdInputTextArea.md" -Example 'New-UDAntdInputTextArea -OnPressEnter {} -Autosize' 
                    }
                    New-UDAntdMenuItem -Title 'Password Box' -Content { "Password Box" } -OnClick {
                        Update-ComponentContentSection -Doc "New-UDAntdInputPassword.md" -Example 'New-UDAntdInputPassword -PlaceHolder "Current password" -VisibilityToggle'
                    }
                } 
            }

            # The section for displaying the command markdown file and the live examples.
            New-UDAntdLayout -Content {
                New-UDAntdContent -Style $component_content_style -Content {
                    New-UDAntdLayout -Content {
                        $component_info_header
                        $component_info_content
                    }
                }
            }
        } 

    }
    
} -Theme $Theme

$Dashboard.FrameworkAssetId = [UniversalDashboard.Services.AssetService]::Instance.Frameworks["Antd"]

$Folder = Publish-UDFolder -Path $PSScriptRoot\UniversalDashboard.Antd\Docs -RequestPath "/AntdDocs"
Start-UDDashboard -Wait -Dashboard $Dashboard -Force -PublishedFolder $Folder