Import-Module "$PSScriptRoot\UniversalDashboard.Antd\UniversalDashboard.Antd.psd1" -Force
Import-Module "$PSScriptRoot\UniversalDashboard.SyntaxHighlighter\1.0.0\UniversalDashboard.SyntaxHighlighter.psd1" -Force
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

    # web app main layout
    New-UDAntdLayout -Id 'mainLayout' -Style $layout_style -Content {

        # web app top header
        New-UDAntdHeader -Id 'mainHeader' -Style $header_style -Content {

            New-UDAntdIcon -Icon BugFill -Color '#1A90FF' -Size 3x 
            # web app top navbar
            New-UDAntdMenu -Id 'mainNavbar' -Style $navbar_style -Content {

                New-UDAntdMenuItem -Style $navbar_item_style -Title Components -Content {
                    New-UDAntdIcon -Icon AppstoreFill -Size 2x 
                } 

                New-UDAntdMenuItem -Style $navbar_item_style -Title Test -Content {
                    New-UDAntdIcon -Icon GithubFill -Size 2x
                } 

                New-UDAntdMenuItem -Style $navbar_item_style -Title Test1 -Content {
                    New-UDAntdIcon -Icon CodeFill -Size 2x
                } 
            
            } 
        
        }  

        # web app content
        New-UDAntdContent -Id 'mainContent' -Style $content_style -Content {
            New-UDAntdCard -Id 'demoCard1' -Content {} -Bordered -Title 'demoCard1' -Style @{height = 150} -IsEndpoint -Variant inner
            New-UDAntdMenu -Id 'componentsMenu' -Mode inline -Style @{width = 250} -Content {
                New-UDAntdSubMenu -Title { "Basic Components" } -Content {
                    New-UDAntdMenuItemGroup -Title Basic -Content {
                        New-UDAntdMenuItem -Title 'Card' -Content {"Card"} -OnClick { Set-UDElement -Id 'demoCard' -Content { "Card Info" } -Attributes @{style = @{backgroundColor = 'blue'; color = '#ffffff'}}}
                        New-UDAntdMenuItem -Title 'Button' -Content {"Button"} -OnClick { Set-UDElement -Id 'demoCard1' -Content { "Button Info" }}
                        New-UDAntdMenuItem -Title 'Button Group' -Content {"Button Group"}
                        New-UDAntdMenuItem -Title 'Radio' -Content {"Radio"} -OnClick { Set-UDElement -Id 'demoCard1' -Attributes @{ title = "Radio Info" }}
                        New-UDAntdMenuItem -Title 'Radio Group' -Content {"Radio Group"}
                        New-UDAntdMenuItem -Title 'Switch' -Content {"Switch"} -OnClick { Set-UDElement -Id 'demoCard' -Attributes @{ title = 'alon'} -Content {'gvili'}}
                    } 
                }
                New-UDAntdSubMenu -Title { "Input Components" } -Content {
                    New-UDAntdMenuItemGroup -Title Input -Content {
                        New-UDAntdMenuItem -Title 'Text Box' -Content {"Text Box"}
                        New-UDAntdMenuItem -Title 'Text Area' -Content {"Text Area"}
                        New-UDAntdMenuItem -Title 'Password Box' -Content {"Password Box"}
                    } 
                }
            }

            New-UDAntdButton -Id 'firstBtn' -OnClick {Set-UDElement -Id 'demoCard' -Content {New-UDParagraph -Text 'alon' -Color 'red'} -Attributes @{title = 'itay'}}
            New-UDAntdButton -Id 'secBtn' -OnClick {Set-UDElement -Id 'demoCard1' -Content {New-UDParagraph -Text 'alon' -Color 'red'} -Attributes @{title = 'gvili'}}

            New-UDAntdLayout -Id 'componentInfo' -Content {
                New-UDAntdContent -Id 'nestedContent' -Content {
                    $Card
                }
            }
        } 

    }
    
} -Theme $Theme

$Dashboard.FrameworkAssetId = [UniversalDashboard.Services.AssetService]::Instance.Frameworks["Antd"]

Start-UDDashboard -Wait -Dashboard $Dashboard -Force