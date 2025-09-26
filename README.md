# Infrastructure as Code – Lab

## Inhoud
Dit project bevat de uitwerkingen van de IAC-opdrachten met **Terraform** en **Ansible**.  
De branch `main` bevat alleen de basisbestanden (`.gitignore`, `LICENSE` en deze `README.md`).  
De uitwerkingen van de opdrachten staan in de branch **Test**.

---

## 1. VM Deployment (Terraform)

### Voorwaarden
- Een Azure of ESXi omgeving
- Terraform geïnstalleerd op je beheermachine
- Een geldige SSH keypair aanwezig (`~/.ssh/id_ed25519.pub` en `~/.ssh/id_ed25519`)

### Stappen
1. Ga naar de map met de Terraform bestanden (branch `Test`).
2. Initieer Terraform:
   ```bash
   terraform init

Plan de deployment:

terraform plan

Voer de deployment uit:

terraform apply

Na afloop staat de VM klaar en kun je via SSH verbinden:

ssh -i ~/.ssh/id_ed25519 azureuser@<public_ip>

**2. Configuratiebeheer (Ansible) 
**Voorwaarden

Ansible geïnstalleerd op je beheermachine
Een inventory bestand met de IP-adressen van de VM’s (bijv. inventory.ini)
Je SSH key moet werken naar de VM’s zonder wachtwoord

Playbooks draaien

Test de verbinding met de VM’s:
ansible -i inventory.ini all -m ping

Draai een playbook, bijvoorbeeld:

ansible-playbook -i inventory.ini Playbook.yml

Voorbeelden uit dit project


# Opdracht 4 – Includes en Imports

## Verschil import_tasks en include_tasks
- **import_tasks:** wordt *compile-time* geladen. Alle taken worden ingeladen bij het parsen van het playbook, dus altijd uitgevoerd.
- **include_tasks:** wordt *runtime* geladen. Taken worden pas ingeladen op het moment dat de taak wordt uitgevoerd. Handig voor gebruik met `when:`-condities of loops.

## Waarom roles handig zijn
- Roles maken je playbooks overzichtelijker door een vaste mappenstructuur.
- Taken, handlers, templates en variabelen zijn netjes gescheiden.
- Roles zijn herbruikbaar in meerdere playbooks en projecten.
- Makkelijker te onderhouden en te delen met andere teamleden.


Playbook.yml: variabelen gebruiken en bestanden aanmaken
Playbook2.yml: voorwaardelijke taken
