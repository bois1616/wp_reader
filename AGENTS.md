# AGENTS.md

## Zweck

Dieses Dokument definiert verbindliche Arbeitsregeln für alle Agenten
(AI oder menschlich), die in diesem Repository arbeiten.

Ziel ist ein reproduzierbarer, strukturierter und nachvollziehbarer
Arbeitsprozess fuer Dokumentenanalyse, Review und Ueberarbeitung.

## Grundprinzipien

1. Backlog ist die Single Source of Truth fuer Aufgaben
2. Alle Aenderungen werden nachvollziehbar dokumentiert
3. Keine impliziten Aufgaben: Neue Arbeit wird zuerst erfasst
4. RSI prueft regelmaessig, ob wir noch am richtigen Problem arbeiten
5. Dokumentqualitaet, Konsistenz und Umsetzbarkeit gehen vor Aktionismus

## Relevante Verzeichnisstruktur

- `dev/backlog.md` enthaelt alle offenen Aufgaben
- `dev/tasks_done.md` enthaelt alle erledigten Aufgaben und Aktivitaeten
- `documents/` enthaelt Quelldokumente und Arbeitsmaterial
- `reviews/` enthaelt Analysen, Review-Notizen und Vorschlaege
- `templates/` enthaelt wiederverwendbare Vorlagen

## Aufgaben-Workflow

### 1. Neue Aufgaben

- Jede neue Aufgabe MUSS zuerst in `dev/backlog.md` eingetragen werden
- Keine direkte Umsetzung ohne Backlog-Eintrag
- Neue Staende stehen immer oben

Format:

```markdown
Stand DD.MM.YYYY: <Kurzbeschreibung der Ergaenzung>

## P0 Must

- [ ] [P0] [category] description
```

### 2. Prioritaeten

- P0 Must: kritisch oder blockierend
- P1 Should: wichtig fuer den naechsten sinnvollen Fortschritt
- P2 Could: nuetzlich, aber nicht dringend
- P3 Nice-to-have: optional

### 3. Kategorien

- docs
- review
- process
- structure
- quality
- legal
- style
- onboarding
- governance

## Reihenfolge im Backlog

- Neueste Status-Eintraege stehen immer oben
- Innerhalb jeder Prioritaet stehen neueste Aufgaben oben

## Erledigte Aufgaben

`dev/tasks_done.md` enthaelt alle erledigten Arbeiten, zum Beispiel:

- abgeschlossene Reviews
- Struktur- und Prozessanpassungen
- neue Vorlagen
- dokumentierte Ueberarbeitungen
- Governance-Aenderungen

Format:

```markdown
## YYYY-MM-DD

- Kurzbeschreibung der erledigten Arbeit
```

## Synchronisation Backlog und Done

Wenn eine Aufgabe erledigt wird:

1. Im Backlog abhaken:

```markdown
- [x] [P1] [review] Review-Vorlage fuer Onboarding-Dokumente erstellen
```

2. In `dev/tasks_done.md` einen neuen oder ergaenzten Tagesblock oben fuehren

## Markdown-Regeln

Alle Markdown-Dateien muessen:

- gueltiges, gut lesbares Markdown verwenden
- konsistente Ueberschriften haben
- keine gemischten Listenformate enthalten
- keine trailing spaces enthalten
- Leerzeilen nach Ueberschriften haben
- klare, knappe Formulierungen verwenden
- deutschsprachige Inhalte mit korrekten Umlauten pflegen, sofern kein
  Technikzwang dagegenspricht

## Sprachregel fuer Dokumente

Fuer deutschsprachige Dokumente im Repository gilt:

- Schweizer Orthographie verwenden
- Umlaute (`ä`, `ö`, `ü`, `Ä`, `Ö`, `Ü`) beibehalten
- `ss` statt `ß` verwenden

Diese Regel gilt insbesondere fuer Policies, Arbeitsanweisungen,
Handbuecher, Reviews und Vorlagen.

## Todo Tree Integration

Zusaetzliche Marker sind erlaubt:

- `TODO:`
- `FIXME:`
- `NOTE:`

Diese ersetzen nicht den Backlog.

## Verbote

Nicht erlaubt sind:

- Aufgaben nur im Chat festhalten
- stille, undokumentierte Aenderungen
- vage oder nicht testbare Aufgaben
- inkonsistente Backlog-Struktur
- RSI- oder Governance-Regeln ignorieren, wenn sie relevant sind

## Zielbild

Das Repository soll jederzeit zeigen:

- woran gerade gearbeitet wird
- welche Aufgaben offen sind
- welche Arbeiten bereits erledigt wurden
- warum diese Arbeit dem Projektziel dient

## RSI-Integration

Dieses Repository nutzt einen formalen RSI-Prozess gemaess `RSI.md`.

Methoden, Vorlagen, Review-Schemata, Ablagen, Prioritaeten und selbst
Governance-Regeln duerfen im Rahmen von RSI angepasst werden, wenn dies die
Qualitaet, Nachvollziehbarkeit und Wirksamkeit der Dokumentenarbeit
nachweislich verbessert.
