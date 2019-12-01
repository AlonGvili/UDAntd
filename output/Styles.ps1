
# All the webapp styles
$WebAppStyles = @{

    ComponentContentSection       = @{
        paddingBottom = 50
        paddingTop = 50 
    }

    ComponentContentSectionHeader = @{
        marginBottom    = 50; 
        padding         = 0
        width           = '100%'; 
        backgroundColor = 'transparent'
        alignItems      = 'center'; 
        display         = 'flex'; 
        justifyContent  = 'flex-end' 
    }

    ComponentContentSectionBody   = @{
        padding         = '0px 50px 0px 50px' 
        backgroundColor = '#fff'
    }

    WebApp                        = @{
        backgroundColor = '#1890ff33'
    }

    Header                        = @{
        marginBottom    = 50; 
        position        = 'fixed';  
        width           = '100%'; 
        backgroundColor = '#1890ff'
        zIndex          = 50; 
        alignItems      = 'center'; 
        display         = 'flex'; 
        justifyContent  = 'space-between' 
        boxShadow       = '0 2px 8px rgba(0, 0, 0, 0.15)'
    }

    NavBar                        = @{
        height    = 64; 
        display   = 'flex'; 
        boxShadow = 'unset' 
    }

    NavBarItem                    = @{
        display    = 'flex'; 
        alignItems = 'center' 
    }

    Content                       = @{
        margin          = '128px 50px 50px 50px'; 
        # backgroundColor = '#fff' 
        display         = 'flex'
    }

    LivePreviewStyle              = @{
        backgroundColor = '#fff'
        display         = 'flex'
        flexDirection   = 'column'
        justifyContent  = 'center'
        alignItems      = 'center'
        marginTop       = 48
    }

    LivePreviewHeadStyle          = @{
        textAlign    = 'start'
        fontSize     = 48
        fontWeight   = 900
        width        = '100%'
        borderBottom = 'unset'
    }

    LivePreviewBodyStyle          = @{
        display       = 'flex'
        flexDirection = 'column'
        width         = '100%'
        padding       = 24
        textAlign     = 'center'
    }

    LivePreviewExampleCodeRoot    = @{
        marginTop = 24
        width     = '100%'
        textAlign = 'center'
    }

    LivePreviewExampleCodeBlock   = @{
        padding         = '0px 24px 24px 24px'
        margin       = 'unset'
        backgroundColor = '#1d4175'
        color           = '#fff'
        textAlign       = 'start'
        borderRadius    = 0
        border = 'unset'
        lineHieght = 2
    }

    CopyCodeButtonStyle = @{
        bottom          = 40
        border          = 'unset'
        boxShadow       = 'unset'
        textShadow      = 'unset'
        zIndex          = 22;
        borderRadius    = '4px 0 4px 0'
        backgroundColor = 'transparent'
        color           = '#fff'
        alignSelf       = 'flex-end'
    }

    CodeExampleMarkdownTitle = @{          
        fontVariant         = 'tabular-nums'
        fontFeatureSettings = 'tnum';
        boxSizing           = 'border-box'
        color               = 'rgb(229, 229, 229)'
        fontSize            = '0.85rem'
        fontWeight          = 'bold'
        transform           = 'translateY(3px)'
        display             = 'flex'
        justifyContent      = 'space-between'
        background          = '#1d4175'
        padding             = '16px 24px'
        marginTop           = 48
        h5                  = @{
            lineHeight   = 2.5
            color        = '#fff'
            marginBottom = 'unset'
        }
    }

    UDAntdParameterTable = @{
        table = @{
            backgroundColor = '#1890ff'; 
            width           = '100%'
            thead           = @{
                backgroundColor = '#1890ff'
                padding         = 20
                fontWeight      = 600
                fontSize        = 20
                borderBottom    = '1px solid #fff'
                trow            = @{
                    border          = '1px solid #fff'
                    backgroundColor = '#1890ff'
                }
            }
            tbody           = @{
            }
            trow            = @{
                border = '2px solid #fff'
            }
            td              = @{
                backgroundColor = '#f5f5f5'
                padding         = 8
            }
        }

    }
}