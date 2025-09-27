# Opdracht 4 – Includes en Imports

## Verschil import_tasks en include_tasks
- **import_tasks:** wordt *compile-time* geladen. Alle taken worden ingeladen bij het parsen van het playbook, dus altijd uitgevoerd.
- **include_tasks:** wordt *runtime* geladen. Taken worden pas ingeladen op het moment dat de taak wordt uitgevoerd. Handig voor gebruik met `when:`-condities of loops.

## Waarom roles handig zijn
- Roles maken je playbooks overzichtelijker door een vaste mappenstructuur.
- Taken, handlers, templates en variabelen zijn netjes gescheiden.
- Roles zijn herbruikbaar in meerdere playbooks en projecten.
- Makkelijker te onderhouden en te delen met andere teamleden.
