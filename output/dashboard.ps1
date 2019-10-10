Import-Module $PSScriptRoot\UniversalDashboard.Antd\UniversalDashboard.Antd.psd1 -Force

$Theme = Get-UDTheme -Name Default
$Theme.Definition['main'] = @{padding = 'unset' }

$Dashboard = New-UDDashboard -Title UDAntd -Content {

    # web app styles
    $content_style = @{padding = 50; margin = '128px 50px 50px 50px'; height = '100vh'; backgroundColor = '#fff' }
    $navbar_style = @{height = 64; display = 'flex' } 
    $header_style = @{marginBottom = 50; position = 'fixed'; padding = 0; width = '100%'; zIndex = 1 }
    $layout_style = @{backgroundColor = '#1A90FF' }
    $logo_style = @{marginRight = 16}

    # web app reused components
    New-UDAntdDrawer -Title Antd -Placement right -Content { } -Closable -Width 600 -MaskClosable -Id 'reused_drawer_right'
    New-UDAntdPopover -Title {'AntdPopover'} -Placement top -Content {} -Children {} -Id 'reused_popover_top'

    # web app main layout
    New-UDAntdLayout -Id 'mainLayout' -Style $layout_style -Content {

        # web app top header
        New-UDAntdHeader -Id 'mainHeader' -Style $header_style -Content {

            New-UDAntdIcon -Icon DashboardFill -Color '#1A90FF' -Size 3x -Style $logo_style
            # web app top navbar
            New-UDAntdMenu -Id 'mainNavbar' -Style $navbar_style -Content {

                New-UDAntdMenuItem -Title Components -Content {
                    New-UDAntdIcon -Icon AppstoreFill -Size 2x 
                } 

                New-UDAntdMenuItem -Title Test -Content {
                    New-UDAntdIcon -Icon GithubFill -Size 2x
                } 

                New-UDAntdMenuItem -Title Test1 -Content {
                    New-UDAntdIcon -Icon CodeFill -Size 2x
                } 
            
            } 
        
        }  

        # web app content
        New-UDAntdContent -Id 'mainContent' -Style $content_style -Content {

        } 

    }
    
} -Theme $Theme

$Dashboard.FrameworkAssetId = [UniversalDashboard.Services.AssetService]::Instance.Frameworks["Antd"]

Start-UDDashboard -Wait -Dashboard $Dashboard -Force