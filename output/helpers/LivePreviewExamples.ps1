$LivePreviewExamplesDB = @{
    Icon         = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdIcon'
                    Description = 'Command for creating ant-design icon'
                    Source      = '
                    (Get-Command New-UDAntdIcon).Parameters.Values | ForEach-Object {
                    if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }
        [PSCustomObject]@{
            Title       = "TYPES"
            Description = "They are 3 types of icon style Fill, Outline, TwoTone"
            Code        = @(
                @{
                    Title       = 'OUTLINE'
                    Description = 'Icon with outline style'
                    Source      = '
                    (Get-Command New-UDAntdIcon).Parameters["icon"].Attributes.ValidValues -match "OUTLINE" | ForEach-Object {
                    New-UDAntdIcon -Icon $_ -Size 2x -Style @{ margin = 16 } -Color "#1890ff"}'
                }   
                @{
                    Title       = 'FILLED'
                    Description = 'Icon with filled style'
                    Source      = '
                    (Get-Command New-UDAntdIcon).Parameters["icon"].Attributes.ValidValues -match "FILL" | ForEach-Object {
                    New-UDAntdIcon -Icon $_ -Size 2x -Style @{ margin = 16 } -Color "#1890ff"}'
                }   
                @{
                    Title       = 'TWOTONE'
                    Description = 'Icon with twotone style'
                    Source      = '
                    (Get-Command New-UDAntdIcon).Parameters["icon"].Attributes.ValidValues -match "TwoTone" | ForEach-Object {
                    New-UDAntdIcon -Icon $_ -Size 2x -Style @{ margin = 16 } -IsTwoTone -PrimaryColor "#1890ff"}'
                    Notes       = @("NOT! all the icons are TwoTone")
                }   
            )
        }
    )
    Card         = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdCard'
                    Description = 'Command for creating ant-design card'
                    Source      = '(Get-Command New-UDAntdCard).Parameters.Values | ForEach-Object { if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }

        [PSCustomObject]@{
            Title       = "CARD"
            Description = 'xxxx'
            Code        = @(
                @{
                    Title       = 'BASIC'
                    Description = 'Card title as text'
                    Source      = "
                    New-UDAntdCard -Bordered -Content {
                        'Just a basic card'
                    } -BodyStyle @{padding = 24} -Style @{boxShadow = '0 2px 8px rgba(0,0,0,0.15)'}" 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "CARD HEADER"
            Description = 'Card can have a top toolbar that can accept title and an array of extra buttons'
            Code        = @(
                @{
                    Title       = 'Title'
                    Description = 'Card title as text'
                    Source      = "
                    New-UDAntdCard -Bordered -Title 'UniversalDashboard' -Content {
                        'UniversalDashboard Antd Card'
                    } -BodyStyle @{padding = 24} -HeadStyle @{textAlign = 'left' } -Style @{boxShadow = '0 2px 8px rgba(0,0,0,0.15)'}" 
                }
                @{
                    Title       = 'Extra Buttons'
                    Description = 'Card header can accepts extra buttons on the right'
                    Source      = "
                    New-UDAntdCard -Bordered -Title 'universal dashboard' -Content {
                        'UniversalDashboard Antd Card'
                    } -Extra @(
                        New-UDAntdButtonGroup -Content {
                            New-UDAntdButton -Icon 'frown' -ButtonType primary -Size small -OnClick {}
                            New-UDAntdButton -Icon 'smile' -ButtonType primary -Size small -OnClick {}
                        } 
                    ) -HeadStyle @{textAlign = 'left'} -BodyStyle @{padding = 24} -Style @{boxShadow = '0 2px 8px rgba(0,0,0,0.15)'}"
                }
                @{
                    Title       = 'Style'
                    Description = 'Using HeadStyle parameter you can apply custom style to the header.         
                    The value must be an HashTable and can accepts any css attributes'
                    Source      = "
                    New-UDAntdCard -Bordered -Title 'universal dashboard' -Content {
                        'UniversalDashboard Antd Card'
                    } -HeadStyle @{
                        textAlign = 'left'
                        backgroundColor = '#293742'
                        color = '#fff'
                        border = 'unset'
                        fontVariant = 'small-caps'
                        fontWeight = 800
                        letterSpacing = '0.2rem'
                    } -BodyStyle @{padding = 24} -Style @{boxShadow = '0 2px 8px rgba(0,0,0,0.15)'}"
                }
            )
        }
        [PSCustomObject]@{
            Title       = "STATE"
            Description = 'Card with loading state'
            Code        = @(
                @{
                    Title       = 'Loading'
                    Description = 'The loading state can be set using ```Set-UDElement``` command'
                    Source      = '
                    New-UDAntdCard -Id "reloaded-card" -IsEndpoint -Bordered -Title "UniversalDashboard" -Content {
                        250..2500 | Get-Random
                    } -Extra @(
                        New-UDAntdSwitch -onChange {
                            if($EventData){
                                Set-UDElement -Id "reloaded-card" -Attributes @{ loading = $true }
                            }else{
                                Set-UDElement -Id "reloaded-card" -Attributes @{ loading = $false }
                            }
                        }
                    ) -HeadStyle @{textAlign = "left"} -BodyStyle @{fontSize = 24} -Style @{boxShadow = "0 2px 8px rgba(0,0,0,0.15)"}'
                }
            )
        }
    )
    Button       = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdButton'
                    Description = 'Command for creating ant-design button'
                    Source      = '(Get-Command New-UDAntdButton).Parameters.Values | ForEach-Object { if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }

        [PSCustomObject]@{
            Title       = "VARIANT"
            Description = 'Ant-Design buttons comes in a numbers of variants'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = "
                    New-UDAntdRow -Style @{
                        display = 'flex'
                        alignItems = 'center'
                        justifyContent = 'center'
                    } -Content {
                    New-UDAntdButton -ButtonType primary -Label demo -Style @{margin = '0px 24px' }
                    New-UDAntdButton -ButtonType ghost -Label 'SUBMIT' -Style @{margin = '0px 24px' }
                    New-UDAntdButton -ButtonType dashed -Label 'SUBMIT' -Style @{margin = '0px 24px' }
                    New-UDAntdButton -ButtonType danger -Label 'SUBMIT' -Style @{margin = '0px 24px' }
                    New-UDAntdButton -ButtonType link -Label 'SUBMIT' -Style @{margin = '0px 24px' }
                    }" 
                }
            )
        }
    )
    Statistic       = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdStatistic'
                    Description = 'Command for creating ant-design statistic component'
                    Source      = '(Get-Command New-UDAntdStatistic).Parameters.Values | ForEach-Object { if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }

        [PSCustomObject]@{
            Title       = "BASIC"
            Description = 'Ant-Design buttons statistic'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = "
                    New-UDAntdRow -Style @{
                        display = 'flex'
                        alignItems = 'center'
                        justifyContent = 'center'
                    } -Content {
                    New-UDAntdStatistic -Value { 100 } -Prefix ( New-UDAntdIcon -Icon GitlabOutline -Size sm ) -Title ( 'Active Users' )
                    }" 
                }
                # @{
                #     Title       = ''
                #     Description = ''
                #     Source      = "
                #     New-UDAntdRow -Style @{
                #         display = 'flex'
                #         alignItems = 'center'
                #         justifyContent = 'center'
                #     } -Content {
                #     New-UDAntdStatistic -Value { (Get-Date).Hour } -Prefix ( New-UDAntdIcon -Icon GitlabOutline -Size sm ) -Title ( 'Active Users' ) -OnFinish {
                #         New-UDAntdNotification -Id 'success' -Title 'Universal Dashboard' -Description $EventData -Preset 'success' -Visible
                #     } -IsEndpoint
                #     }" 
                # }
            )
        }
    )
    Steps       = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdSteps'
                    Description = 'Command for creating ant-design steps component'
                    Source      = '(Get-Command New-UDAntdSteps).Parameters.Values | ForEach-Object { if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }

        [PSCustomObject]@{
            Title       = "BASIC"
            Description = 'Ant-Design steps component'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = "
                    New-UDAntdRow -Style @{
                        display = 'flex'
                        alignItems = 'center'
                        justifyContent = 'center'
                    } -Content {
                    New-UDAntdSteps -Id 'demo-steps' -Content {
                        New-UDAntdStep -Title 'Build' -Description 'Building the UDAntd module in progress' -Content {
                            New-UDAntdIcon -Icon CodeOutline -Size 4x 
                        }
                        New-UDAntdStep -Title 'Tests' -Description 'Using pester to test the module' -Content {
                            New-UDAntdIcon -Icon GithubOutline -Size 4x 
                        } -ErrorMessage 'Pester Tests Faild'
                        # Set-UDElement -Id 'demo-steps' -Attributes @{status = 'error'}
                        New-UDAntdStep -Title 'Publish' -Description 'Publish module to PowerShell gallery' -Content {
                            New-UDAntdIcon -Icon GitlabOutline -Size 4x 
                        }
                    } 
                    }" 
                }
                # @{
                #     Title       = ''
                #     Description = ''
                #     Source      = "
                #     New-UDAntdRow -Style @{
                #         display = 'flex'
                #         alignItems = 'center'
                #         justifyContent = 'center'
                #     } -Content {
                #     New-UDAntdStatistic -Value { (Get-Date).Hour } -Prefix ( New-UDAntdIcon -Icon GitlabOutline -Size sm ) -Title ( 'Active Users' ) -OnFinish {
                #         New-UDAntdNotification -Id 'success' -Title 'Universal Dashboard' -Description $EventData -Preset 'success' -Visible
                #     } -IsEndpoint
                #     }" 
                # }
            )
        }
    )
    Comment       = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdComment'
                    Description = 'Command for creating ant-design comment component'
                    Source      = '(Get-Command New-UDAntdComment).Parameters.Values | ForEach-Object { if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }

        [PSCustomObject]@{
            Title       = "BASIC"
            Description = 'Ant-Design comment'
            Code        = @(
                @{
                    Title       = 'An empty comment'
                    Description = ''
                    Source      = "
                    New-UDAntdRow -Style @{
                        display = 'flex'
                        alignItems = 'center'
                        justifyContent = 'center'
                    } -Content {
                    New-UDAntdComment
                    }" 
                }
                @{
                    Title       = 'Comment with text'
                    Description = ''
                    Source      = "
                    New-UDAntdRow -Style @{
                        display = 'flex'
                        alignItems = 'center'
                        justifyContent = 'center'
                    } -Content {
                    New-UDAntdComment -Message { 'Just a demo message for udantd comment component' }
                    }" 
                }
                @{
                    Title       = 'Add nested comment using Add-UDElement'
                    Description = ''
                    Source      = "
                    New-UDAntdRow -Style @{
                        display = 'flex'
                        alignItems = 'center'
                        justifyContent = 'center'
                    } -Content {
                    New-UDAntdComment -Id 'nested-comment' -Message { 'Just a demo message for udantd comment component' } -Author ( 'alon gvili' ) -DateTime (get-date).ToShortTimeString() -Avatar (
                        New-UDAntdAvatar -Src 'https://avatars1.githubusercontent.com/u/34351424?s=400&u=1af0f32562a8f68850c736e3fca838c5ed022203&v=4' -Shape square
                    ) -Actions @(
                    New-UDAntdButton -Label 'Add Comment'  -ButtonType primary -OnClick {
                        Add-UDElement -ParentId 'nested-comment' -Content {
                            
                            New-UDAntdComment -Message { 
                                'Here is a live statistics for the active users...'
                                
                                New-UDAntdStatistic -Value { 100..450 | Get-Random } -Prefix ( New-UDAntdIcon -Icon GitlabOutline -Size sm ) -Title ( 'Active Users' ) -IsEndpoint -AutoRefresh -RefreshInterval 2000
                            } -Author ( 'ud bot' ) -DateTime (get-date).ToShortTimeString()
                        }
                    }
                    )
                    }" 
                }
            )
        }
    )
    Notification = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdNotification'
                    Description = 'Command for creating ant-design notification message'
                    Source      = '(Get-Command New-UDAntdNotification).Parameters.Values | ForEach-Object { if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }

        [PSCustomObject]@{
            Title       = "PRESETS"
            Description = 'Basic notification message with buildin icon'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Style @{
                        display = "flex"
                        alignItems = "center"
                        justifyContent = "center"
                    } -Content {
                    
                    New-UDAntdNotification -Id "success" -Title "Universal Dashboard" -Description "Notification Description Content" -Preset "success"
                    New-UDAntdNotification -Id "error" -Title "Universal Dashboard" -Description "Notification Description Content" -Preset "error"
                    New-UDAntdNotification -Id "warnning" -Title "Universal Dashboard" -Description "Notification Description Content" -Preset "warning"
                    New-UDAntdNotification -Id "info" -Title "Universal Dashboard" -Description "Notification Description Content" -Preset "info"

                    New-UDAntdButton -ButtonType primary -Label Success -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "success" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label Error -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "error" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label Warnning -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "warnning" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label Info -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "info" -Attributes @{visible = $true}
                    }
                    }
                    '
                }
            )
        }
        [PSCustomObject]@{
            Title       = "CUSTOM NOTIFICATION"
            Description = 'Custom notification content with OnClose event'
            Code        = @(
                @{
                    Title       = ''
                    Description = 'After the first notification close it will open new notification message.'
                    Source      = '
                    New-UDAntdRow -Style @{
                        display = "flex"
                        alignItems = "center"
                        justifyContent = "center"
                    } -Content {
                        New-UDAntdNotification -Id "noti2" -Title "Universal Dashboard" -Description (
                        New-UDAntdIcon -Icon GitlabFill -Size 4x 
                    ) -Style @{textAlign = "center"} 
                    New-UDAntdNotification -Id "noti1" -Title "Universal Dashboard" -Description (
                        New-UDAntdIcon -Icon GithubFill -Size 4x 
                    ) -Style @{textAlign = "center"} -OnClose {
                        Set-UDElement -Id "noti2" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label demo -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "noti1" -Attributes @{visible = $true}
                    }
                    }
                    '
                }
            )
        }
        [PSCustomObject]@{
            Title       = "Placement"
            Description = 'Set the notification placement on the screen.'
            Code        = @(
                @{
                    Title       = ''
                    Description = 'They are 4 positions: topLeft, topRight, bottomLeft, bottomRight'
                    Source      = '
                    New-UDAntdRow -Style @{
                        display = "flex"
                        alignItems = "center"
                        justifyContent = "center"
                    } -Content {
                        New-UDAntdNotification -Id "success-topLeft" -Title "Universal Dashboard" -Description "Notification Description Content" -Preset "success" -Placement topLeft
                        New-UDAntdNotification -Id "success-topRight" -Title "Universal Dashboard" -Description "Notification Description Content" -Preset "success" -Placement topRight
                        New-UDAntdNotification -Id "success-bottomRight" -Title "Universal Dashboard" -Description "Notification Description Content" -Preset "success" -Placement bottomRight
                        New-UDAntdNotification -Id "success-bottomLeft" -Title "Universal Dashboard" -Description "Notification Description Content" -Preset "success" -Placement bottomLeft
                    New-UDAntdButton -ButtonType primary -Label topLeft -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "success-topLeft" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label topRight -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "success-topRight" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label bottomRight -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "success-bottomRight" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label bottomLeft -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "success-bottomLeft" -Attributes @{visible = $true}
                    }
                    }
                    '
                }
            )
        }
        [PSCustomObject]@{
            Title       = "Style"
            Description = 'Set the notification style like backgroundColor.'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Style @{
                        display = "flex"
                        alignItems = "center"
                        justifyContent = "center"
                    } -Content {
                        New-UDAntdNotification -Id "style-topLeft" -Title "Universal Dashboard" -Description "Notification Description Content" -Placement topLeft -Style @{
                            backgroundColor = "#1d4175"
                            color = "#fff"
                        } -TitleStyle @{ color = "#fff"}
                    New-UDAntdButton -ButtonType primary -Label topLeft -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "style-topLeft" -Attributes @{visible = $true}
                    }
                    }
                    '
                }
            )
        }
    )
    Message = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdMessage'
                    Description = 'Command for creating ant-design message'
                    Source      = '(Get-Command New-UDAntdMessage).Parameters.Values | ForEach-Object { if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }

        [PSCustomObject]@{
            Title       = "PRESETS"
            Description = 'Basic message with buildin icon'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Style @{
                        display = "flex"
                        alignItems = "center"
                        justifyContent = "center"
                    } -Content {
                    
                    New-UDAntdMessage -Id "success" -Content {"Universal Dashboard"} -Preset "success"
                    New-UDAntdMessage -Id "error" -Content {"Universal Dashboard" } -Preset "error"
                    New-UDAntdMessage -Id "warnning" -Content {"Universal Dashboard"} -Preset "warning"
                    New-UDAntdMessage -Id "info" -Content {"Universal Dashboard"} -Preset "info"
                    New-UDAntdMessage -Id "loading" -Content {"Universal Dashboard"} -Preset "loading"

                    New-UDAntdButton -ButtonType primary -Label Success -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "success" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label Error -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "error" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label Warnning -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "warnning" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label Info -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "info" -Attributes @{visible = $true}
                    }
                    New-UDAntdButton -ButtonType primary -Label Loading -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "loading" -Attributes @{visible = $true}
                    }
                    }
                    '
                }
            )
        }
        [PSCustomObject]@{
            Title       = "Custom Icon"
            Description = 'Basic message with custom icon'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Style @{
                        display = "flex"
                        alignItems = "center"
                        justifyContent = "center"
                    } -Content {
                    
                    New-UDAntdMessage -Id "custom-icon" -Key "mdemo" -Content {"Antd message with custom icon"} -Icon ( New-UDAntdIcon -Icon QuestionCircleOutline -Size lg -Color "#faad14")  

                    New-UDAntdButton -ButtonType primary -Label "Custom Icon" -Style @{margin = "0px 24px" } -OnClick {
                        Set-UDElement -Id "custom-icon" -Attributes @{visible = $true}
                    }
                    }
                    '
                }
            )
        }
    )
    AutoComplete = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdAutoComplete'
                    Description = 'Command for creating ant-design auto complete input'
                    Source      = '(Get-Command New-UDAntdAutoComplete).Parameters.Values | ForEach-Object { if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }

        [PSCustomObject]@{
            Title       = "BASIC"
            Description = 'Just a basic auto complete input'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Style @{
                        display = "flex"
                        alignItems = "center"
                        justifyContent = "center"
                    } -Content {
                        New-UDAntdAutoComplete -DataSource {
                            Get-Process | 
                            Foreach-Object {
                                $Prc = $_
                                @{
                                    text = $Prc.ProcessName
                                    value = "{0}" -f $Prc.Id
                                    id = (New-Guid).guid
                                }
                            }
                        } -OnSelect { Show-UDToast -Message $EventData} -InputStyle @{height = 64} -placeholder "Start searching for process"
                    }' 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "Custom Input"
            Description = 'You can change the default auto complete input with a custom one.'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Style @{
                        display = "flex"
                        alignItems = "center"
                        justifyContent = "center"
                    } -Content {
                        New-UDAntdAutoComplete -DataSource {
                            Get-Process | 
                            Foreach-Object {
                                $Prc = $_
                                @{
                                    text = $Prc.ProcessName
                                    value = "{0}" -f $Prc.Id
                                    id = (New-Guid).guid
                                }
                            }
                        } -OnSelect { Show-UDToast -Message $EventData} -CustomInput (
                            New-UDAntdInput -size large -Suffix ( New-UDAntdIcon -Icon GithubFill -Size 2x ) -PlaceHolder "Search for repo" -Style @{ height = 80; border = "2px solid lime"}
                        )
                    }' 
                }
            )
        }
    )
    Slider = @(
        [PSCustomObject]@{
            Title       = 'API'
            Description = 'Command Parameters'
            Code        = @(
                @{
                    Title       = 'New-UDAntdSlider'
                    Description = 'Command for creating ant-design slider'
                    Source      = '(Get-Command New-UDAntdSlider).Parameters.Values | ForEach-Object { if($_.name -notin [System.Management.Automation.Internal.CommonParameters].DeclaredProperties.name){$_}}'
                }
            )
        }

        [PSCustomObject]@{
            Title       = "BASIC"
            Description = 'Just a basic slider'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {Show-UDToast -Message $EventData} -RailStyle @{backgroundColor = "#e4e4e4"} 
                    }' 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "ICONS"
            Description = 'Basic slider with icons'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                            if([int]$EventData -gt 25){
                                Set-UDElement -Id "slider_icon_before" -Attributes @{color = "#d4d4d4"}
                                Set-UDElement -Id "slider_icon_after" -Attributes @{color = "#333"}
                            }
                            else {
                                Set-UDElement -Id "slider_icon_after" -Attributes @{color = "#d4d4d4"}
                                Set-UDElement -Id "slider_icon_before" -Attributes @{color = "#333"}
                            }
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -BeforeIcon (
                            New-UDAntdIcon -Icon GithubFill -Size 2x -Id "slider_icon_before" -Color "#333"
                        ) -AfterIcon (
                            New-UDAntdIcon -Icon GitlabFill -Size 2x -Id "slider_icon_after" -Color "#d4d4d4"
                        )
                    }' 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "RANGE"
            Description = 'Slider with range'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -Range -Step 5 -DefaultValue @(0,5)
                    }' 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "MARKS"
            Description = 'Slider with marks'
            Code        = @(
                @{
                    Title       = 'Marks Icons'
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -Step 25 -Marks @{
                            0 = New-UDAntdIcon -Icon CloudOutline -Size lg
                            25 = New-UDAntdIcon -Icon CloudSyncOutline -Size lg
                            50 = New-UDAntdIcon -Icon CloudServerOutline -Size lg
                            75 = New-UDAntdIcon -Icon CloudDownloadOutline -Size lg
                            100 = New-UDAntdIcon -Icon CloudUploadOutline -Size lg
                        }
                    }' 
                }
                @{
                    Title       = 'Marks labels'
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -Step 25 -Marks @{
                            0 = "0°C"
                            25 = "25°C"
                            50 = "50°C"
                            75 = "75°C"
                            100 = "100°C"
                        }
                    }' 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "DEFAULT VALUE"
            Description = 'Slider that have default value.'
            Code        = @(
                @{
                    Title       = 'Array'
                    Description = 'default value in a range slider'
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -Id "slider-demo" -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -Range -Step 5 -DefaultValue @(15,35) 
                    }' 
                }
                @{
                    Title       = 'Single'
                    Description = 'default value in a basic slider'
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -Id "slider-demo" -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -Step 5 -DefaultValue @(15) 
                    }' 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "DOTS"
            Description = 'Slider with dots for display steps'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -Step 5 -Dots -DefaultValue @(35)
                    }' 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "VERTICAL"
            Description = 'Vertical slider'
            Code        = @(
                @{
                    Title       = ''
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -Step 5 -Dots -DefaultValue @(35) -Vertical
                    } -Style @{height = 300}' 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "TOOLTIP"
            Description = 'Slider tooltip properties'
            Code        = @(
                @{
                    Title       = 'Always display the tooltip'
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -Step 5 -Dots -DefaultValue @(35) -TooltipVisible
                    }' 
                }
                @{
                    Title       = 'Tooltip position'
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -Step 5 -Dots -DefaultValue @(35) -TooltipVisible -TooltipPlacement bottom
                    }' 
                }
            )
        }
        [PSCustomObject]@{
            Title       = "STYLES"
            Description = 'Styling the slider'
            Code        = @(
                @{
                    Title       = 'Rail style'
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#096dd9"} -Step 5 -Dots -DefaultValue @(35) -TooltipVisible
                    }' 
                }
                @{
                    Title       = 'Track style'
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -TrackStyle @{backgroundColor = "#096dd9"} -Step 5 -Dots -DefaultValue @(35) -TooltipVisible -TooltipPlacement bottom
                    }' 
                }
                @{
                    Title       = 'Handle style'
                    Description = ''
                    Source      = '
                    New-UDAntdRow -Content {
                        New-UDAntdSlider -OnChange {
                           Show-UDToast -Message $EventData
                        } -RailStyle @{backgroundColor = "#e4e4e4"} -HandleStyle @{borderColor = "#096dd9"; backgroundColor = "#096dd9"} -Step 5 -Dots -DefaultValue @(35) -TooltipVisible -TooltipPlacement bottom
                    }' 
                }
            )
        }
    )
}


