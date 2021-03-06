Import-Module "$PSScriptRoot\UniversalDashboard.Antd\UniversalDashboard.Antd.psd1" -Force -ErrorAction Stop
Import-Module "$PSScriptRoot\UniversalDashboard.Markdown\UniversalDashboard.Markdown.psd1" -Force -ErrorAction Stop
# Import-Module "$PSScriptRoot\UniversalDashboard.Chroma\UniversalDashboard.Chroma.psd1" -Force -ErrorAction Stop
Import-Module "$PSScriptRoot\PSDocs\0.6.3\PSDocs.psd1" -Force -ErrorAction Stop

# import webapp styles variables
Import-Module -Variable * $PSScriptRoot\styles.ps1 -Force
Import-Module -Variable * $PSScriptRoot\helpers\ReusedComponent.ps1 -Force
Import-Module -Function * $PSScriptRoot\helpers\UDAntdComponentTemp.ps1 -Force
Import-Module -Function * $PSScriptRoot\helpers\LivePreview.ps1 -Force
# Import-Module -Variable * $PSScriptRoot\helpers\LivePreviewExamples.ps1 -Force
# $LivePreviewExamplesDB = Invoke-RestMethod  https://raw.githubusercontent.com/AlonGvili/UDAntd/master/output/data/data.json
    $LivePreviewExamplesDB = Get-Content -Path $PSScriptRoot\data\data.json -Raw | ConvertFrom-Json


# clear ud theme definition and add new ones.
$Theme = Get-UDTheme -Name Default
$Theme.Definition.Clear()

$Root = $PSScriptRoot

$Dashboard = New-UDDashboard -Title "Universal Dashboard Ant-Design" -Content {

    # web app main layout
    New-UDAntdLayout -Id 'mainLayout' -Style $WebAppStyles['Webapp'] -Content {

        # web app top header
        New-UDAntdHeader -Id 'mainHeader' -Style $WebAppStyles['Header'] -Content {

            # web app top navbar
            New-UDAntdMenu -Id 'mainNavbar' -DefaultSelectedKeys 'components' -Style $WebAppStyles['NavBar'] -Content {

                New-UDAntdMenuItem -Style $WebAppStyles['NavBarItem'] -Title $x.biosDescription -Content {
                    New-UDAntdIcon -Icon HomeOutline -Size lg 
                } -OnClick { }

                New-UDAntdMenuItem -Id 'components' -Style $WebAppStyles['NavBarItem'] -Title Components -Content {
                    New-UDAntdIcon -Icon LoadingOutline -Size lg 
                } -OnClick {
                    Set-LocalStorageItem -ItemKey 'server_info' -ItemValue { Get-ComputerInfo }
                }

                New-UDAntdMenuItem -Style $WebAppStyles['NavBarItem'] -Title Test -Content {
                    New-UDAntdIcon -Icon GithubOutline -Size lg
                } -OnClick { Invoke-UDRedirect -Url https://github.com/AlonGvili/UDAntd -OpenInNewWindow }
            
            } 
        
        }  

    
        # web app content
        New-UDAntdContent -Id 'main_content' -Style $WebAppStyles['Content'] -Content {
        
    
            New-UDAntdMenu -Id 'main_component_menu' -Mode inline -Style @{width = 256; minWidth = 256 } -Content {

                New-UDAntdMenuItemGroup -Id 'menu_group_general' -Title 'General' -Content {
                    New-UDAntdMenuItem -Title 'Icon'  -Content { "Icon" } -OnClick { 
                        $LivePreviewExamplesDB.Icon | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Id 'component_button' -Title 'Button'  -Content { "Button" } -OnClick { 
                        $LivePreviewExamplesDB.Button | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Title 'Button Group'  -Content { "Button Group" } -OnClick { 
                        # $LivePreviewExamplesDB['ButtonGroup'] | New-LivePreview | Add-LivePreview
                        # Set-LivePreviewPage
                    }
                } 
                New-UDAntdMenuItemGroup -Id 'menu_group_data_display' -Title 'Data Display' -Content {
                    New-UDAntdMenuItem -Title 'Avatar'  -Content { "Avatar" } -OnClick { 
                        # $LivePreviewExamplesDB['Avatar'] | New-LivePreview | Add-LivePreview
                        # Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Title 'Badge'  -Content { "Badge" } -OnClick { 
                        # $LivePreviewExamplesDB['Badge'] | New-LivePreview | Add-LivePreview
                        # Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Title 'Card'  -Content { "Card" } -OnClick {
                        $LivePreviewExamplesDB.Card | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Content { "Comment" } -OnClick {
                        $LivePreviewExamplesDB.Comment | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Title 'Notification'  -Content { "Notification" } -OnClick {
                        $LivePreviewExamplesDB.Notification | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Content { "Steps" } -OnClick {
                        $LivePreviewExamplesDB.Steps | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Title 'Message'  -Content { "Message" } -OnClick {
                        $LivePreviewExamplesDB.Message | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Title 'Carousel'   -Content { "Carousel" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Description List'  -Content { "Description List" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Popover'  -Content { "Popover" } -OnClick { }
                    New-UDAntdMenuItem -Content { "Statistic" } -OnClick {
                        $LivePreviewExamplesDB.Statistic | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                     }
                } 
                New-UDAntdMenuItemGroup -Id 'menu_group_navigation' -Title 'Navigation' -Content {
                    New-UDAntdMenuItem -Title 'Dropdown'  -Content { "Dropdown" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Menu'  -Content { "Menu" } -OnClick { }
                } 
                New-UDAntdMenuItemGroup -Id 'menu_group_data_entry' -Title 'Data Entry' -Content {
                    New-UDAntdMenuItem -Title 'AutoComplete'  -Content { "AutoComplete" } -OnClick { 
                        $LivePreviewExamplesDB.AutoComplete | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                    } 
                    New-UDAntdMenuItem -Title 'Slider'  -Content { "Slider" } -OnClick { 
                        $LivePreviewExamplesDB.Slider | New-UDAntdComponent | Add-LivePreview
                        Set-LivePreviewPage
                    } 
                    New-UDAntdMenuItem -Title 'Radio'  -Content { "Radio" } -OnClick { } 
                    New-UDAntdMenuItem -Title 'Radio Group'  -Content { "Radio Group" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Switch'  -Content { "Switch" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Input'  -Content { "Input" } -OnClick { 
                        # $LivePreviewExamplesDB['Input'] | New-LivePreview | Add-LivePreview 
                        # Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Title 'Text Area'  -Content { "Text Area" } -OnClick { }
                    
                    New-UDAntdMenuItem -Title 'Password Box'  -Content { "Password Box" } -OnClick { }
                    
                } 
            }

            # The section for displaying the command markdown file and the live examples.
            New-UDAntdLayout -Id 'layout_component_content' -Content {
                New-UDAntdContent -Id 'component_content_body' -Style $WebAppStyles['ComponentContentSectionBody'] -Content {
                    $ComponentContentSection              
                }
            } 
        } 
        New-UDAntdFooter -BackgroundColor '#083864' -Columns {
            New-UDAntdFooterColumn -Title Modules -Items {
                New-UDAntdFooterColumnItem -Title 'UDAntd' -Description 'Ant-Design module' -Url 'https://github.com/AlonGvili/UniversalDashboard.Antd' -OpenExternal
                New-UDAntdFooterColumnItem -Title 'UDMarkdown' -Description 'Markdown in ud' -Url 'https://github.com/AlonGvili/UniversalDashboard.Markdown' -OpenExternal
                New-UDAntdFooterColumnItem -Title 'UDMaterialUICarousel' -Description 'material style carousel' -Url 'https://github.com/AlonGvili/UniversalDashboard.MaterialUICarousel' -OpenExternal
            }
            New-UDAntdFooterColumn -Title UDInfo -Items {
                New-UDAntdFooterColumnItem -Title 'Docs' -Description 'Ant-Design module' -Url 'https://github.com/AlonGvili/UniversalDashboard.Antd' -OpenExternal
                New-UDAntdFooterColumnItem -Title 'Demo' -Description 'Markdown in ud' -Url 'https://github.com/AlonGvili/UniversalDashboard.Markdown' -OpenExternal
                New-UDAntdFooterColumnItem -Title 'Forums' -Description 'material style carousel' -Url 'https://github.com/AlonGvili/UniversalDashboard.MaterialUICarousel' -OpenExternal
            }
        }
    }        
} -Theme $Theme 

$Dashboard.FrameworkAssetId = [UniversalDashboard.Services.AssetService]::Instance.Frameworks["Antd"]

# $Folder = Publish-UDFolder -Path D:\local\VirtualDirectory0\site\wwwroot\data\ -RequestPath "/data"
Start-UDDashboard -Wait -Dashboard $Dashboard -Force 
# Start-UDDashboard -Dashboard $Dashboard -Force  -Port 1004

