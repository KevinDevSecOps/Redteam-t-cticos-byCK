## 🤖 Integración con Slack
1. Configura tu webhook en `slack_alerts.py`.
2. Importa el módulo en tus scripts:
```python
from Integrations.slack_alerts import send_slack_alert
```
3. Personaliza mensajes con emojis y formato Markdown.

> 🔐 **Seguridad**: Nunca expongas tu webhook en código público. Usa variables de entorno.
```

---

### 🔄 **Cómo Implementarlo**
1. **Añade los nuevos scripts**:
   ```bash
   git add Tools/Scripts/Integrations/slack_alerts.py Tools/Scripts/Slack-Scanner.ps1
   git commit -m "feat: Add Slack integration for alerts"
   git push origin main
   ```

2. **Actualiza scripts existentes** (ej: `Domain-Hunter.py`):
   ```python
   # Añade al inicio del archivo
   try:
       from Integrations.slack_alerts import send_slack_alert
       SLACK_ENABLED = True
   except ImportError:
       SLACK_ENABLED = False
   ```

---

### 🌟 **Bonus: Notificaciones de Error**
Extiende `slack_alerts.py` para manejar fallos:
```python
def send_error(webhook_url, error):
    send_slack_alert(
        webhook_url,
        f":fire: Error en `{__file__}`:\n```{str(error)}```"
    )
```
