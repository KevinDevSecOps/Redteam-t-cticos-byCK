<#
.SYNOPSIS
    Escanea puertos y envía resultados a Slack.
.DESCRIPTION
    Usa webhooks para notificar hallazgos críticos.
#>

param (
    [string]$Target = "10.0.0.1",
    [string]$SlackWebhook = "https://hooks.slack.com/services/TXXXXXX/BXXXXXX/XXXXXX"
)

# Escaneo rápido de puertos (ejemplo)
$ports = @(22, 80, 443, 3389)
$openPorts = foreach ($port in $ports) {
    if (Test-NetConnection $Target -Port $port -WarningAction SilentlyContinue).TcpTestSucceeded {
        $port
    }
}

# Enviar a Slack
if ($openPorts) {
    $message = @{
        text = "[🔍] Escaneo en $Target - Puertos abiertos: $($openPorts -join ', ')"
    } | ConvertTo-Json

    Invoke-RestMethod -Uri $SlackWebhook -Method Post -Body $message -ContentType 'application/json'
    Write-Output "[+] Resultados enviados a Slack."
}

uso:

.\Slack-Scanner.ps1 -Target "192.168.1.100" -SlackWebhook "URL_DE_TU_WEBHOOK"
