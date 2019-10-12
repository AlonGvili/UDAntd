Import-Module "$PSScriptRoot\UniversalDashboard.Antd\UniversalDashboard.Antd.psd1" -Force
Import-Module "$PSScriptRoot\UniversalDashboard.SyntaxHighlighter\UniversalDashboard.SyntaxHighlighter.psd1" -Force
Import-Module "$PSScriptRoot\UniversalDashboard.Markdown\UniversalDashboard.Markdown.psd1" -Force

# import webapp styles variables
Import-Module -Variable * $PSScriptRoot\webappStyles.ps1

# remove some ud theme settings
$Theme = Get-UDTheme -Name Default
$Theme.Definition['main'] = @{padding = 'unset' }

$Dashboard = New-UDDashboard -Title UDAntd -Content {

    # web app reused components
    New-UDAntdDrawer -Id 'reused_drawer_right' -Title Antd -Placement right -Content { } -Closable -Width 600 -MaskClosable 
    New-UDAntdPopover -Id 'reused_popover_top' -Title { 'AntdPopover' } -Placement top -Content { } -Children { } 
    $Card = New-UDAntdCard -Id 'demoCard' -Content {} -Bordered -Title 'demoCard' -Style @{height = 150}
    
    # $Session:CommandDoc = ''
    # $Session:CommandExample = ''

    # web app main layout
    New-UDAntdLayout -Id 'mainLayout' -Style $layout_style -Content {

        # web app top header
        New-UDAntdHeader -Id 'mainHeader' -Style $header_style -Content {

            New-UDAntdIcon -Icon BugFill -Color '#1A90FF' -Size 3x 
            # web app top navbar
            New-UDAntdMenu -Id 'mainNavbar' -Style $navbar_style -Content {

                New-UDAntdMenuItem -Style $navbar_item_style -Title Components -Content {
                    New-UDAntdIcon -Icon AppstoreFill -Size 2x 
                } -OnClick {'#'}

                New-UDAntdMenuItem -Style $navbar_item_style -Title Test -Content {
                    New-UDAntdIcon -Icon GithubFill -Size 2x
                } -OnClick { Invoke-UDRedirect -Url https://github.com/AlonGvili/UDAntd}
            
            } 
        
        }  

        # web app content
        New-UDAntdContent -Id 'mainContent' -Style $content_style -Content {
            New-UDAntdMenu -Id 'componentsMenu' -Mode inline -Style @{width = 250} -Content {
                New-UDAntdSubMenu -Title { "Components" } -Content {
                    New-UDAntdMenuItemGroup -Title 'General' -Content {
                        New-UDAntdMenuItem -Title 'Icon' -Content {"Icon"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Icon Info" }}
                        New-UDAntdMenuItem -Title 'Button' -Content {"Button"} -OnClick { Set-UDElement -Id 'demoCard' -Attributes @{title = 'title was update'} -Content { "Button Info" }}
                        New-UDAntdMenuItem -Title 'Button Group' -Content {"Button Group"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Button Info" }}
                    } 
                    New-UDAntdMenuItemGroup -Title 'Data Display' -Content {
                        New-UDAntdMenuItem -Title 'Badge' -Content {"Badge"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Badge Info" }}
                        New-UDAntdMenuItem -Title 'Card' -Content {"Card"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Card Info" }}
                        New-UDAntdMenuItem -Title 'Carousel' -Content {"Carousel"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Carousel Info" }}
                        New-UDAntdMenuItem -Title 'Description List' -Content {"Description List"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Description List Info" }}
                        New-UDAntdMenuItem -Title 'Popover' -Content {"Popover"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Popover Info" }}
                        New-UDAntdMenuItem -Title 'Statistic' -Content {"Statistic"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Statistic Info" }}
                    } 
                    New-UDAntdMenuItemGroup -Title 'Navigation' -Content {
                        New-UDAntdMenuItem -Title 'Dropdown' -Content {"Dropdown"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Dropdown Info" }}
                        New-UDAntdMenuItem -Title 'Menu' -Content {"Menu"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Menu Info" }}
                    } 
                    New-UDAntdMenuItemGroup -Title 'Data Entry' -Content {
                        New-UDAntdMenuItem -Title 'Radio' -Content {"Radio"} -OnClick { Set-UDElement -Id 'nestedContent' -Attributes @{style = @{backgroundClor = '#fff'}} -Content { 
                            New-UDAntdRadioGroup -Content {
                                New-UDAntdRadio -Content {"Ant-design"} -Value "antd"
                                New-UDAntdRadio -Content {"Material-ui"} -Value "mui"
                                New-UDAntdRadio -Content {"MaterializeCss"} -Value "mcss"
                            } -DefaultValue "antd" -OnChange { Show-UDToast -Message "$EventData was selected!"}
                         }}
                        New-UDAntdMenuItem -Title 'Radio Group' -Content {"Radio Group"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Button Info" }}
                        New-UDAntdMenuItem -Title 'Switch' -Content {"Switch"} -OnClick { Set-UDElement -Id 'nestedContent' -Content { "Switch" }}
                        New-UDAntdMenuItem -Title 'Text Box' -Content {"Text Box"} -OnClick {Set-UDElement -Id 'nestedContent' -Content { "Text Box" }}
                        New-UDAntdMenuItem -Title 'Text Area' -Content {"Text Area"} -OnClick {
                            Set-Item -Path "Cache:CommandDoc" -Value "Text Area"
                            Set-Item -Path "Cache:CommandExample" -Value 'New-UDAntdInputTextArea -OnPressEnter {} -Autosize' 
                            Set-Item -Path "Cache:ContentToDisplay" -Value "showDoc"
                            $switcher = Get-UDElement -Id 'contentSwitcher'
                            Set-UDElement -Id 'contentSwitcher' -Attributes @{value = "showDoc"} -Content {$switcher.content}
                            
                        }
                        New-UDAntdMenuItem -Title 'Password Box' -Content {"Password Box"} -OnClick {
                            Set-Item -Path "Cache:CommandDoc" -Value "Password Box"
                            Set-Item -Path "Cache:CommandExample" -Value 'New-UDAntdInputPassword -PlaceHolder "Current password" -VisibilityToggle'
                            Set-Item -Path "Cache:ContentToDisplay" -Value "showDoc"
                            $switcher = Get-UDElement -Id 'contentSwitcher'
                            Set-UDElement -Id 'contentSwitcher' -Attributes @{value = "showDoc"} -Content {$switcher.content}
                        }
                    } 
                }
            }

            New-UDAntdLayout -Id 'componentInfo' -Content {
                New-UDAntdContent -Id 'nestedContent' -Style @{padding = '0px 50px 0px 50px'} -Content {
                    New-UDAntdLayout -Content {
                        New-UDAntdHeader -Style $header_componentInfo_style -Content {
                            New-UDAntdRadioGroup -Id 'contentSwitcher' -Size small -ButtonStyle solid -Value "showDoc" -Content {
                                New-UDAntdRadioButton -Content {"Doc"} -Value "showDoc" 
                                New-UDAntdRadioButton -Content {"Example"} -Value "showExample" 
                            } -OnChange {
                                Set-Item -Path "Cache:ContentToDisplay" -Value $EventData
                                $WhatToShow = Get-Item -Path "Cache:ContentToDisplay"
                            
                                if($WhatToShow -eq "showDoc"){
                                    $Doc = Get-Item -Path "Cache:CommandDoc"
                                    Set-UDElement -Id 'componentInfoContent' -Content {New-UDMarkdown -Markdown "Showing doc for $Doc"}
                                }
                                elseif($WhatToShow -eq "showExample"){
                                    $Example = Get-Item -Path "Cache:CommandExample"
                                    Set-UDElement -Id 'componentInfoContent' -Content {New-UDSyntaxHighlighter -Language powershell -Style github -Code "$($Example)"}
                                }
                            } 
                        }

                        New-UDAntdContent -Id 'componentInfoContent' -Content {} 
                    }
                }
            }
        } 

    }
    
} -Theme $Theme

$Dashboard.FrameworkAssetId = [UniversalDashboard.Services.AssetService]::Instance.Frameworks["Antd"]

Start-UDDashboard -Wait -Dashboard $Dashboard -Force