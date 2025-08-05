# 📜 Scripts de Red Team

## Requisitos
- PowerShell 5.1+ (para scripts .ps1)
- Python 3.x + `requests` (para scripts .py)

## Uso
1. Ejecutar con permisos de administrador (Windows):
```powershell
powershell -ep bypass .\AMSI-Bypass.ps1# 📜 Scripts de Red Team

## Requisitos
- PowerShell 5.1+ (para scripts .ps1)
- Python 3.x + `requests` (para scripts .py)

## Uso
1. Ejecutar con permisos de administrador (Windows):
```powershell
powershell -ep bypass .\AMSI-Bypass.ps1
```
2. Para scripts Python:
```bash
python3 automate_phishing.py
```

> ⚠️ Solo para entornos autorizados. Revisa el [DISCLAIMER.md](../../Legal/DISCLAIMER.md).
```

---

### 🔥 ¿Por qué estos scripts?
- **Mínimos pero útiles**: Resuelven problemas reales (bypass EDR, automatización).  
- **Fáciles de modificar**: Estructura clara para que otros contribuyan.  
- **Pruebas rápidas**: Cualquier miembro del equipo puede ejecutarlos en segundos.  

¿Quieres que añada más funcionalidades a algún script en particular? Por ejemplo:  
- [ ] Añadir ofuscación al bypass de AMSI.  
- [ ] Integrar con Sliver/Cobalt Strike en el script de phishing.  
- [ ] Crear un script de escaneo de puertos con Python.  

¡Dime y lo implementamos! 🚀

# 🧰 Scripts de Automatización para Red Team

## Categorías
| Script                      | Descripción                               | Requisitos           |
|-----------------------------|-------------------------------------------|----------------------|
| `Process-Injector.ps1`      | Inyección de shellcode en procesos        | PowerShell 5.1+      |
| `Domain-Hunter.py`          | Enumeración de Active Directory           | Python 3 + Impacket  |
| `Cloud-Credential-Scanner.sh` | Detección de credenciales en repositorios | Bash + grep          |

## 🚀 Cómo Contribuir
1. Asegúrate que los scripts incluyan:
   - Cabecera con descripción.
   - Manejo básico de errores.
   - Ejemplos de uso.
2. Usa el estándar de nombres: `[Tecnica]-[Lenguaje].[ext]`.

> ⚠️ **Legal**: Todos los scripts deben usarse solo con autorización.
