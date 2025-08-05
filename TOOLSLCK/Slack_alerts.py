#!/usr/bin/env python3
"""
Envía alertas personalizadas a Slack desde cualquier script.
"""
import requests
import json

def send_slack_alert(webhook_url, message, channel="#red-team-alerts"):
    payload = {
        "text": message,
        "channel": channel,
        "username": "RedTeam-Bot"
    }
    response = requests.post(
        webhook_url,
        data=json.dumps(payload),
        headers={'Content-Type': 'application/json'}
    )
    return response.status_code == 200

# Ejemplo de uso en otros scripts:
if __name__ == "__main__":
    send_slack_alert(
        "https://hooks.slack.com/services/TXXXXXX/BXXXXXX/XXXXXX",
        "⚠️ Nueva sesión C2 activa en 10.0.0.5"
    )

Integrar con el hunter domain

from slack_alerts import send_slack_alert

users = get_domain_users("10.10.1.1", "admin", "P@ssw0rd")
send_slack_alert(WEBHOOK_URL, f"[AD] Usuarios enumerados: {len(users)}")
