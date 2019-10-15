
# All the webapp styles
$WebAppStyles = @{

    ComponentContentSection       = @{
        paddingBottom = 50 
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
        backgroundColor = '#ffffff'
        zIndex          = 9999; 
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
        backgroundColor = '#fff' 
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
        padding         = 16
        marginTop       = 16
        backgroundColor = '#021d38'
        color           = '#e6f7ff'
        textAlign       = 'start'
        borderRadius    = 4
    }
}