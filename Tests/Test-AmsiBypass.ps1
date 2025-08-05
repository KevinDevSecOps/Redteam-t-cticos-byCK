# Verifica si AMSI está deshabilitado
$amsiContext = [Ref].Assembly.GetType('System.Management.Automation.AmsiUtils')
if ($amsiContext::amsiInitFailed -eq $true) { "✅ AMSI Bypassed" }
