Set-Item "Cache:HelpDocContent" -Value @() -Force

function New-HelpDoc {
    param(
        [Parameter(ValueFromPipelineByPropertyName)]
        [object]$Parameters,
        [Parameter(ValueFromPipelineByPropertyName)]
        [object]$Summery,
        [Parameter(ValueFromPipelineByPropertyName)]
        [object]$Notes
    )

    process{
        New-HelpDocSummery -InputObject $Summery
        New-HelpDocParameters -InputObject $Parameters
        New-HelpDocNotes -InputObject $Notes
    }
}   

function New-HelpDocSummery {
    param(
        [Parameter()]
        []$InputObject
    )
}