<#
.SYNOPSIS
    Módulo para enviar alertas a Slack desde PowerShell.
#>

function Send-SlackAlert {
    param (
        [string]$WebhookUrl = $env:SLACK_WEBHOOK,
        [string]$Message,
        [string]$Channel = "#red-team-alerts"
    )

    $Payload = @{
        text = $Message
        channel = $Channel
    } | ConvertTo-Json

    Invoke-RestMethod -Uri $WebhookUrl -Method Post -Body $Payload -ContentType 'application/json'
}

Export-ModuleMember -Function Send-SlackAlert
