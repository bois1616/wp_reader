# wp_reader — Dokumentenanalyse & -optimierung Wegpiraten

Dieses Repository dient der strukturierten Analyse, Überarbeitung und
Qualitätssicherung organisationsinterner Dokumente der Wegpiraten (wegpiraten.ch).

---

## Scope

- **Onboarding** – Einstiegsdokumente für neue Mitglieder
- **Code of Conduct** – Verhaltensrichtlinien, Konfliktregelung
- **IT-Reglementierung** – Datenschutz, Nutzungsregeln, DSGVO-Konformität
- **Sonstige** – Satzung, Beschlüsse, Vorlagen u. ä.

---

## Verzeichnisstruktur

```
wp_reader/
├── documents/
│   ├── onboarding/          # Originaldokumente Onboarding
│   ├── code-of-conduct/     # Originaldokumente CoC
│   ├── it-reglementierung/  # IT-Reglement, DSGVO-relevantes
│   └── sonstiges/           # Weitere Organisationsdokumente
├── reviews/                 # Analyse-Notizen und Verbesserungsvorschläge
├── templates/               # Wiederverwendbare Vorlagen
└── .vscode/                 # Projekt-Einstellungen
```

---

## Arbeitsweise

1. Originaldokumente unter `documents/<kategorie>/` ablegen (als `.md` oder `.txt`)
2. Analyse und Kommentare in `reviews/<dokumentname>-review.md` festhalten
3. Überarbeitete Versionen im selben Ordner mit Suffix `-v2` oder `-überarbeitet`
4. Änderungen regelmäßig committen mit aussagekräftigen Commit-Messages

---

## Git-Workflow

```bash
git status
git add .
git commit -m "Beschreibung der Änderung"
git push origin main
```

---

## GitHub-Anbindung

```bash
# Einmalig nach Repo-Erstellung auf GitHub:
git remote add origin https://github.com/DEIN-USER/wp_reader.git
git push -u origin main
```

> Tipp: Auf GitHub → *New repository* → **Private** → ohne README anlegen.
