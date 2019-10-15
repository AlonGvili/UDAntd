Import-Module "$PSScriptRoot\UniversalDashboard.Antd\UniversalDashboard.Antd.psd1" -Force -ErrorAction Stop
Import-Module "$PSScriptRoot\UniversalDashboard.Markdown\UniversalDashboard.Markdown.psd1" -Force -ErrorAction Stop
Import-Module "$PSScriptRoot\PSDocs\0.6.3\PSDocs.psd1" -Force -ErrorAction Stop

# import webapp styles variables
Import-Module -Variable * $PSScriptRoot\styles.ps1
Import-Module -Variable * $PSScriptRoot\helpers\ReusedComponent.ps1
Import-Module -Function * $PSScriptRoot\helpers\LivePreview.ps1
Import-Module -Variable * $PSScriptRoot\helpers\LivePreviewExamples.ps1

# clear ud theme definition and add new ones.
$Theme = Get-UDTheme -Name Default
$Theme.Definition.Clear()

$Root = $PSScriptRoot
# Helper functions

$Dashboard = New-UDDashboard -Title UDAntd -Content {

    

    # web app main layout
    New-UDAntdLayout -Id 'mainLayout' -Style $WebAppStyles['Webapp'] -Content {

        # web app top header
        New-UDAntdHeader -Id 'mainHeader' -Style $WebAppStyles['Header'] -Content {

            # web app top navbar
            New-UDAntdMenu -Id 'mainNavbar' -Style $WebAppStyles['NavBar'] -Content {

                New-UDAntdMenuItem -Style $WebAppStyles['NavBarItem'] -Title Components -Content {
                    New-UDAntdIcon -Icon HomeOutline -Size lg 
                } -OnClick { }

                New-UDAntdMenuItem -Style $WebAppStyles['NavBarItem'] -Title Components -Content {
                    New-UDAntdIcon -Icon AppstoreOutline -Size lg 
                } -OnClick { }

                New-UDAntdMenuItem -Style $WebAppStyles['NavBarItem'] -Title Test -Content {
                    New-UDAntdIcon -Icon GithubOutline -Size lg
                } -OnClick { Invoke-UDRedirect -Url https://github.com/AlonGvili/UDAntd -OpenInNewWindow }
            
            } 
        
        }  

        # web app content
        New-UDAntdContent -Style $WebAppStyles['Content'] -Content {

            New-UDAntdMenu -Mode inline -DefaultSelectedKeys 'component_button' -Style @{width = 256; minWidth = 256 } -Content {

                New-UDAntdMenuItemGroup -Title 'General' -Content {
                    New-UDAntdMenuItem -Id 'component_icon' -Title 'Icon'  -Content { "Icon" } -OnClick { 
                        $LivePreviewExamplesDB['Icon'] | New-LivePreview | Add-LivePreview 
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Id 'component_button' -Title 'Button'  -Content { "Button" } -OnClick { 
                        $LivePreviewExamplesDB['Button'] | New-LivePreview | Add-LivePreview 
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Title 'Button Group'  -Content { "Button Group" } -OnClick { 
                        $LivePreviewExamplesDB['ButtonGroup'] | New-LivePreview | Add-LivePreview
                        Set-LivePreviewPage
                    }
                } 
                New-UDAntdMenuItemGroup -Title 'Data Display' -Content {
                    New-UDAntdMenuItem -Title 'Badge'  -Content { "Badge" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Card'  -Content { "Card" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Carousel'   -Content { "Carousel" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Description List'  -Content { "Description List" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Popover'  -Content { "Popover" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Statistic'  -Content { "Statistic" } -OnClick { }
                } 
                New-UDAntdMenuItemGroup -Title 'Navigation' -Content {
                    New-UDAntdMenuItem -Title 'Dropdown'  -Content { "Dropdown" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Menu'  -Content { "Menu" } -OnClick { }
                } 
                New-UDAntdMenuItemGroup -Title 'Data Entry' -Content {
                    New-UDAntdMenuItem -Title 'Radio'  -Content { "Radio" } -OnClick { } 
                    New-UDAntdMenuItem -Title 'Radio Group'  -Content { "Radio Group" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Switch'  -Content { "Switch" } -OnClick { }
                    New-UDAntdMenuItem -Title 'Input'  -Content { "Input" } -OnClick { 
                        $LivePreviewExamplesDB['Input'] | New-LivePreview | Add-LivePreview 
                        Set-LivePreviewPage
                    }
                    New-UDAntdMenuItem -Title 'Text Area'  -Content { "Text Area" } -OnClick {}
                    
                    New-UDAntdMenuItem -Title 'Password Box'  -Content { "Password Box" } -OnClick {}
                    
                } 
            }

            # The section for displaying the command markdown file and the live examples.
            New-UDAntdLayout -Content {
                New-UDAntdContent -Style $WebAppStyles['ComponentContentSectionBody'] -Content {
                    New-UDAntdLayout -Style @{backgroundColor = '#fff'} -Content {
                        $ComponentContentSwitch
                        $ComponentContentSection
                    }
                }
            }
        } 

    }
    
} -Theme $Theme 

$Dashboard.FrameworkAssetId = [UniversalDashboard.Services.AssetService]::Instance.Frameworks["Antd"]

$Folder = Publish-UDFolder -Path $PSScriptRoot\UniversalDashboard.Antd\Docs -RequestPath "/AntdDocs"
Start-UDDashboard -Wait -Dashboard $Dashboard -Force -PublishedFolder $Folder 
# Start-UDDashboard -Dashboard $Dashboard -Force -PublishedFolder $Folder -Port 1002 

