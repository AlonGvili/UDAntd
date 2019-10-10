Import-Module $PSScriptRoot\UniversalDashboard.Antd\UniversalDashboard.Antd.psd1 -Force

$Theme = Get-UDTheme -Name Default
$Theme.Definition['main'] = @{padding = 'unset'}

$Dashboard = New-UDDashboard -Title UDAntd -Content {
    New-UDAntdDrawer -Title Antd -Placement right -Content { } -Closable -Width 600 -MaskClosable -Id 'mainDrawer'
    New-UDAntdLayout -Content {

        # site header
        New-UDAntdHeader -Content {

            New-UDAntdMenu -Content {

                New-UDAntdMenuItem -Title Components -Content {
        
                    New-UDAntdIcon -Icon LayoutOutline -Size 2x 
        
                } -Style @{display = 'flex'; alignItems = 'center' }

                New-UDAntdMenuItem -Title Test -Content {
        
                    New-UDAntdIcon -Icon GithubOutline -Size 2x 
        
                } -Style @{display = 'flex'; alignItems = 'center' }

                New-UDAntdMenuItem -Title Test1 -Content {
        
                    New-UDAntdIcon -Icon GitlabOutline -Size 2x 
        
                } -Style @{display = 'flex'; alignItems = 'center' }
            
            } -Style @{height = 64; display = 'flex'}
        
        } -Style @{marginBottom = 50; position = 'fixed'; padding = 0; width = '100%'; zIndex = 1 }

        New-UDAntdContent -Content {

            New-UDAntdButton -Label "OPEN DRAWER" -OnClick {
                Set-UDElement -Id 'mainDrawer' -Attributes @{visible = $true}
            }

            New-UDAntdButton -Label "Change TimeLine Mode" -OnClick {
                Set-UDElement -Id 'timeline' -Attributes @{mode = 'left'}
            }

            New-UDAntdButton -Label "Change TimeLine Mode To Alternate" -OnClick {
                Set-UDElement -Id 'timeline' -Attributes @{mode = 'alternate' }
            }

            New-UDAntdButton -Label "ADD TO TIMELINE" -OnClick {
                Add-UDElement -ParentId 'timeline' -Content {
                    New-UDAntdTimeLineItem -Content {
                        "New item were crated"
                    } -Color 'green'

                }
            }
    
            New-UDAntdTimeLine -Id 'timeline' -Content {
                New-UDAntdTimeLineItem -Content {
                    "Computers were crated"
                } -Color 'pink'
                New-UDAntdTimeLineItem -Content {
                    "PowerShell was created"
                } -Color 'blue'
                New-UDAntdTimeLineItem -Content {
                    "Universal Dashboard was created"
                } -Color 'red'
            } -Mode alternate
        } -Style @{padding = 50; marginTop = 128; marginBottom = 50; marginLeft = 50; marginRight = 50;  height = '100vh'; backgroundColor = '#fff'}
    } -Style @{backgroundColor = '#1A90FF'}
    
} -Theme $Theme

$Dashboard.FrameworkAssetId = [UniversalDashboard.Services.AssetService]::Instance.Frameworks["Antd"]

Start-UDDashboard -Wait -Dashboard $Dashboard -Force