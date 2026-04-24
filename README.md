# wp_reader — Dokumentenanalyse & -optimierung Wegpiraten

Dieses Repository dient der strukturierten Analyse, Überarbeitung und
Qualitätssicherung organisationsinterner Dokumente der Wegpiraten (wegpiraten.ch).

Der operative Arbeitsmodus ist agentengesteuert und backlog-basiert.
Verbindliche Regeln stehen in `AGENTS.md`, `CLAUDE.md` und `RSI.md`.
Offene Aufgaben werden in `dev/backlog.md` geführt, erledigte Arbeit in
`dev/tasks_done.md`.

---

## Scope

- **Onboarding** – Einstiegsdokumente für neue Mitglieder
- **Code of Conduct** – Verhaltensrichtlinien, Konfliktregelung
- **IT-Reglementierung** – Datenschutz, Nutzungsregeln, DSGVO-Konformität
- **Sonstige** – Satzung, Beschlüsse, Vorlagen u. ä.

---

## Verzeichnisstruktur

```text
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

1. Neue Arbeit zuerst in `dev/backlog.md` eintragen
2. Originaldokumente unter `documents/<kategorie>/` ablegen
3. Analyse und Kommentare in `reviews/<dokumentname>-review.md` festhalten
4. Überarbeitete Versionen nachvollziehbar ablegen
5. Erledigte Aufgaben in `dev/tasks_done.md` dokumentieren

### Leitprinzip: Polish-first

Der primäre Arbeitsansatz für bestehende Kundendokumente ist **Polish-first**:

- Inhalt und Ton des Originals bleiben erhalten
- Fehler werden behoben, Struktur verbessert
- Redundanzen werden identifiziert und zur Kundenentscheidung vorgelegt,
  nicht eigenmaechtig gestrichen
- Anschauungsmaterial (z. B. gestaltete Fremdfassungen) dient dem Abgleich,
  nicht als Vorlage

---

## Governance und RSI

- `AGENTS.md` definiert die verbindlichen Arbeitsregeln fuer alle Agenten
- `CLAUDE.md` beschreibt den operativen AI-Arbeitsmodus
- `RSI.md` definiert, wie wir Workflow, Vorlagen und Prioritaeten
  iterativ verbessern
- Corporate-Design-Fragen werden repo-weit in der README und zugehoerigen
  Referenzen gefuehrt, nicht als Kapitel des inhaltlichen Sammeldokuments

Das Ziel ist nicht nur bessere Dokumente, sondern ein nachvollziehbarer,
stabiler und wiederholbarer Verbesserungsprozess.

---

## Corporate Design

Corporate Design ist fuer dieses Repository relevant, gehoert aber nicht als
eigenes Kapitel in das inhaltliche Sammeldokument.

Massgebliche gestalterische Referenzen liegen derzeit in:

- `documents/external/Briefing_Reader.pdf`
- `documents/external/wegpiraten_logo.svg`
- `documents/external/wegpiraten_logo.png`
- `documents/external/wegpiraten_logo.jpg`

Kundendokumente als Arbeitsgrundlage (Polish-first):

- `documents/external/inhaltsverzeichnis.md` – Kapitelstruktur des Originals
- `documents/external/rumpf_willkommen_an_bord_ueberarbeitet.pdf` – gestaltete
  Fremdfassung (Anschauungsmaterial, kein Vorbild; enthält Fehler und
  unpassende Bilder)
- `documents/external/Korrekturlesen Willkommen an Bord bei der Wegpiraten .pdf`
  – Korrekturfassung des Originals
- `documents/external/willkommen-an-bord-original.md` – Original als Markdown

Fuer finale Auslieferungen gilt:

- Logo verwenden, bevorzugt als SVG
- Fusszeile mit bestaetigten Firmendaten fuehren
- keine Zugangsdaten oder anderen sensitiven technischen Informationen
  abdrucken

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
git remote add origin https://github.com/bois1616/wp_reader.git
git push -u origin main
```

> Tipp: Auf GitHub → *New repository* → **Private** → ohne README anlegen.
