# 🔥 Red Team Táctics (TTPs) - MITRE ATT&CK Edition

**`Redteam-tácticos-byCK`** es un repositorio colaborativo con técnicas avanzadas de Red Team alineadas a MITRE ATT&CK. Incluye:  
🔹 TTPs detalladas (Phishing, Lateral Movement, EDR Evasion)  
🔹 Scripts listos para usar (PowerShell, Python)  
🔹 Laboratorios prácticos y cheatsheets  
🔹 Enfoque en ética y pruebas autorizadas  

*"Para profesionales que buscan aprender ofensiva realista, no solo teoría."*  


[![License: MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)
[![Contributions Welcome](https://img.shields.io/badge/Contributions-Welcome-brightgreen.svg)](CONTRIBUTING.md)
[![PRs Welcome](https://img.shields.io/badge/PRs-Welcome-blue.svg)](https://github.com/yourusername/RedTeam-Tactics/pulls)

Repositorio colaborativo de **tácticas, técnicas y procedimientos (TTPs)** basados en el framework MITRE ATT&CK, con ejemplos prácticos para equipos rojos, pentesters e investigadores de seguridad.

> ⚠️ **Disclaimer**: Este proyecto es solo para fines educativos y de investigación autorizada. El uso malintencionado de estas técnicas es ilegal.

---

## 📌 Índice
- [Estructura del Repositorio](#-estructura-del-repositorio)
- [Técnicas Destacadas](#-técnicas-destacadas)
- [Contribuir](#-contribuir)
- [Recursos Adicionales](#-recursos-adicionales)
- [Licencia](#-licencia)

---

## 🗂 Estructura del Repositorio
```bash
/RedTeam-Tactics
├── Initial-Access       # Phishing, exploits, etc.
├── Execution            # LOLBAS, inyección de comandos
├── Persistence          # Backdoors, tareas programadas
├── Lateral-Movement     # Pass-The-Hash, RDP hijacking
├── Exfiltration         # DNS, Cloud, técnicas stealth
└── Defense-Evasion      # AMSI bypass, ofuscación
```

---

## � Técnicas Destacadas
| Táctica               | Técnica MITRE ATT&CK | Herramientas                          | Ejemplo                          |
|-----------------------|----------------------|---------------------------------------|----------------------------------|
| **Phishing**          | T1566                | GoPhish, Evilginx2                    | [Ver ejemplo](Initial-Access/Phishing.md) |
| **Pass-The-Hash**     | T1550.002            | Mimikatz, Impacket                    | [Ver ejemplo](Lateral-Movement/Pass-The-Hash.md) |
| **AMSI Bypass**       | T1562.001            | AMSI.fail, PowerShell ofuscación      | [Ver ejemplo](Defense-Evasion/AMSI-Bypass.md) |

---
## 🗺️ Mapa de Técnicas (MITRE ATT&CK)
| Táctica              | Técnicas                              | Ejemplo                          |
|----------------------|---------------------------------------|----------------------------------|
| **Initial Access**   | Phishing (T1566)                      | [Ver](Initial-Access/Phishing.md)|
| **Defense Evasion**  | AMSI Bypass (T1562.001)               | [Ver](Defense-Evasion/AMSI-Bypass.md) |

## 🚀 Cómo Contribuir
1. Edita los archivos `.md` existentes o añade nuevos.
2. Usa el formato [Markdown](https://guides.github.com/features/mastering-markdown/).

## 🤝 Contribuir
¡Aceptamos contribuciones! Sigue estos pasos:
1. Haz un **fork** del repositorio.
2. Crea una rama con tu técnica: `git checkout -b new-ttp`.
3. Añade tu contenido (ej: `Persistence/New-Method.md`).
4. Envía un **Pull Request** con una descripción clara.

Revisa las [guías de contribución](CONTRIBUTING.md) para más detalles.

---

## 📚 Recursos Adicionales
- [MITRE ATT&CK Matrix](https://attack.mitre.org/)
- [Awesome Red Teaming](https://github.com/yeyintminthuhtut/Awesome-Red-Teaming)
- [LOLBAS Project](https://lolbas-project.github.io/)

---

## © Licencia
Este proyecto está bajo licencia **MIT**.  
**Ética ante todo**: Usa este conocimiento solo en entornos autorizados y legales.

---

> 💡 ¿Preguntas? Abre un **Issue** o únete a nuestra [Discusión comunitaria](https://github.com/yourusername/RedTeam-Tactics/discussions).
```

### 🔥 Características Clave:
1. **Badges profesionales**: Licencia, contribuciones y PRs.
2. **Tabla de técnicas destacadas**: Enlazadas a archivos internos.
3. **Estructura modular**: Fácil de navegar y actualizar.
4. **Enfoque legal claro**: Disclaimer visible desde el inicio.

### 📌 Para Personalizar:
- Reemplaza `yourusername` por tu GitHub.
- Añade más técnicas en la tabla (usa el formato Markdown).
- Vincula tus redes sociales o blog en el footer.

¿Necesitas ayuda para adaptar algo en específico? ¡Avísame! 🚀
