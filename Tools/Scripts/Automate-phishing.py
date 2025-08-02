#!/usr/bin/env python3
"""
Automatización básica de campañas phishing con GoPhish (API).
Requisitos: pip install requests
"""
import requests

API_KEY = "TU_API_KEY_DE_GOPHISH"
URL = "https://tuservidor-gophish:3333/api"

def create_campaign():
    payload = {
        "name": "Campaña HR - Julio 2024",
        "template_id": 1,
        "url": "http://fake-login.com/hr",
        "targets": ["correos.txt"]
    }
    headers = {"Authorization": f"Bearer {API_KEY}"}
    response = requests.post(f"{URL}/campaigns", json=payload, headers=headers, verify=False)
    print(f"[+] Campaña creada: ID {response.json()['id']}")

if __name__ == "__main__":
    create_campaign()

uso:
python3 automate_phishing.py
