#!/usr/bin/env python3
"""
Automatiza enumeración de Active Directory usando impacket.
"""
from impacket.ldap import ldap

def get_domain_users(domain_controller, username, password):
    try:
        conn = ldap.LDAPConnection(f"ldap://{domain_controller}")
        conn.login(username, password)
        conn.search("dc=corp,dc=local", "(objectClass=user)")
        return [entry["dn"] for entry in conn.entries]
    except Exception as e:
        print(f"[!] Error: {e}")

if __name__ == "__main__":
    users = get_domain_users("10.10.1.1", "admin", "P@ssw0rd")
    print(f"[+] Usuarios del dominio: {len(users)}")

uso:
python3 Domain-Hunter.py -dc 10.10.1.1 -u admin -p 'P@ssw0rd'
