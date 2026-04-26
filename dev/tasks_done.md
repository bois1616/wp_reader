# Tasks Done

## 2026-04-26

- Bildlayout willkommen_an_bord.md überarbeitet: alle minipage-Blöcke mit Fliesstext
  (B.5, B.6, C.1, C.3, C.6, C.7, D.1 Unterseen, D.1 Bootshaus, D.4) durch wrapfigure{l}
  ersetzt; minipage nur noch für Bild+Kommentarbox (A.2, A.3) beibehalten;
  Artefakt-\end{minipage} in C.6 und C.7 bereinigt; PDF kompiliert sauber

## 2026-04-24 (Fortsetzung 2)

- Neufassung willkommen_an_bord_v2.md mit allen Review-Änderungen erstellt:
  Illustrationen per wrapfig neben den Text gestellt (kein Caption),
  Formulare inline (nicht im Anhang), alle Zugangsdaten/Codes in Anhang Z,
  Kommentare als [Frage]-Blöcke direkt im Text, rechtlich kritische Stellen
  markiert (Überstunden, Nacht-/Sonntagsarbeit, Probezeit, Kündigung),
  Inhaltskorrekturen: Übertrag-Regel (max. 10 Tage bis 31.3.), Widerspruch
  Überstunden bereinigt, Zahlen <10 als Wort, Vaterschaftsurlaub-Frage ergänzt,
  NBUV-Kostenträger präzisiert, QR-Code-Platzhalter für Kalender-URLs,
  D.4 Arbeitssicherheit als offene Frage markiert; Makefile für PDF-Build;
  PDF kompiliert via xelatex (6.4 MB)

## 2026-04-24 (Fortsetzung)

- Neufassung willkommen_an_bord_v1.md erstellt (documents/onboarding/):
  4-Gruppen-Struktur (A: Willkommen, B: Anstellungsverhältnis, C: Arbeiten,
  D: Organisation), Swiss German, LaTeX-kompatibel, Formulare im Anhang,
  Bilder pro Abschnitt (Original-Assets + wp_service-Header), assets-Ordner
  mit 15 Bildern unter documents/onboarding/assets/ angelegt

## 2026-04-24

- korrekturlesen_willkommen_an_bord.md via Claude Vision neu erzeugt (1172 Zeilen):
  sauber strukturiert, keine Duplikate, Formularabschnitte korrekt
- rumpf_willkommen_an_bord_ueberarbeitet.md via Claude Vision erzeugt (288 Zeilen)
- Aufräumen: dev/pdf_to_md.py (PyMuPDF-Ansatz, überholt) und
  willkommen-an-bord-original.md (Pandoc-Artefakte) entfernt
- Steuerdateien README.md und RSI.md auf Polish-first-Ansatz ausgerichtet
  (Kundenfeedback: Original erhalten, Fehler beheben, Redundanzen kennzeichnen)
- Neue Quelldokumente in README.md als Referenz eingetragen
- Backlog mit konkreten Folgeaufgaben für den Neuansatz ergänzt

## 2026-04-23

- Reduzierte Fork-Fassung `Willkommen an Bord` als freundlichen,
  bestimmten und originalnaeheren Wegweiser erstellt
- Wegweiser-Fork im RSI-Sinn auf Verstaendlichkeit, Innenorientierung und
  Wegpiraten-Aussenwirkung nachgeschaerft
- Wegweiser sprachlich direkter formuliert und um Orientierung zu
  Zeiterfassung, Arbeitszeitnachweis, Spesen sowie Briefing-Abgleich ergänzt
- Wegweiser um Budgetlogik aus Kostengutsprache, direkteren Einstieg fuer
  Neuzugaenge und grafische Deckseite mit Wegweiser-Motiv ergänzt
- Wegweiserstruktur mit fruehem praktischem Einstieg, direkter Ansprache und
  Kleidungshinweis fuer die Wegpiraten-Repräsentation nachgeschaerft
- Willkommen-an-Bord-Wegweiser ohne Sinnverlust gestrafft und redundante
  Passagen reduziert
- Willkommen-an-Bord-Wegweiser PDF-stabil auf LaTeX/Pandoc-Titelseite mit
  Logo, Bär und Wasserzeichen ab Seite 2 umgestellt und PDF neu erzeugt
- Wasserzeichen wieder entfernt und Wegweiser-Motiv auf der Titelseite an
  Stelle des Bären gesetzt; PDF erneut sauber aus `docs/` erzeugt

## 2026-04-02

- Sammeldokument Version 0.2 als vorzeigbare und LaTeX-taugliche
  Kundenfassung erstellt
- Corporate-Design-Verortung in die README verschoben
- Kapitel Corporate Design aus dem Sammeldokument entfernt und als separate
  Gestaltungsfrage positioniert
- RSI-Schritt 20: offene Punkte auf v0.2-Zielbild und Endredaktion hin neu
  priorisiert
- RSI-Schritt 19: Corporate Design enger auf die reale Auslieferung bezogen
- RSI-Schritt 18: untere Kapitel des Sammeldokuments strukturell und
  sprachlich geglättet
- RSI-Schritt 17: Kapitel Eintritt, Austritt und Rollenwechsel um
  Checklistenlogik ergänzt
- RSI-Schritt 16: Kapitel Fallarbeit und Dokumentation um verbindlichere
  Arbeitsstandards ergänzt
- RSI-Schritt 15: Mitarbeitenden-Handbuch um konkrete Onboarding-Startlogik
  ergänzt
- RSI-Schritt 14: Kapitel Rollen und Entscheidungen als erste Matrixlogik
  geschärft
- RSI-Schritt 13: Kapitel IT und Zugriffe inhaltlich präzisiert
- RSI-Schritt 12: Kapitel Datenschutz und Vertraulichkeit inhaltlich
  präzisiert
- RSI-Schritt 11: sprachliche Regressionen und Abschnittsnummern im
  Sammeldokument bereinigt
- RSI-Schritt 10: offene Punkte des Sammeldokuments priorisiert und in
  nächste Arbeitsblöcke überführt
- RSI-Schritt 9: Titelseite und Fusszeilenlogik des Sammeldokuments
  konkretisiert
- RSI-Schritt 8: Sammeldokument sprachlich auf Umlaute und konsistente
  Schweizer Orthographie bereinigt
- RSI-Schritt 6: Kapitel Eintritt, Austritt und Rollenwechsel als V1 ergänzt
- RSI-Schritt 5: Kapitel Fallarbeit und Dokumentation als V1 ergaenzt
- RSI-Schritt 4: Kapitel Rollen und Entscheidungen als V1 ergaenzt
- RSI-Schritt 3: Kapitel IT und Zugriffe als V1 ergaenzt
- RSI-Schritt 2: Kapitel Datenschutz und Vertraulichkeit als V1 ergaenzt
- RSI-Schritt 1: Kapitel Mitarbeitenden-Handbuch als Einstiegsebene fuer das
  Sammeldokument ergaenzt
- Sammeldokument Version 0.1 als zusammengefuehrte Arbeitsfassung erstellt
- Firmen-Verfassung und Sprach- und Kommunikationsleitfaden als V1 ergänzt
- Sammeldokument-Logik mit Kapitel-Sprache sowie Anforderungen an Logo und
  Fusszeile dokumentiert
- Erste V1 fuer Vision und Mission, Werte und Haltungsprinzipien, Code of
  Conduct und technische Dienstanweisung zu Diensthandys angelegt
- Zweilinien-Modell mit Identitaetslinie und Compliance-Operations-Linie
  konkretisiert
- Mapping der externen PDFs auf den Soll-Dokumentensatz erstellt
- Rechtliche Leitplanken fuer Schweiz und Kanton Bern aus offiziellen Quellen
  zusammengestellt
- Soll-Dokumentensatz fuer einen schlanken Policy- und
  Arbeitsanweisungs-Stack abgeleitet
- Organisationskontext, Rollenbild und fachlichen Scope fuer Wegpiraten als
  Arbeitsgrundlage dokumentiert
- Fragenkatalog und Anforderungsliste fuer zusaetzliche Referenzdokumente
  erstellt
- Agentengesteuerten RSI-Arbeitsmodus fuer das Repository definiert
- `AGENTS.md`, `CLAUDE.md` und `RSI.md` angelegt
- `dev/backlog.md` und `dev/tasks_done.md` als kanonische Steuerdateien
  eingefuehrt
- README auf den neuen Governance- und Arbeitsmodus ausgerichtet

## 2026-04-03

- Abgrenzung von Firmen-Verfassung und Code of Conduct im Sammeldokument
  geschärft
- kompakte RACI-Logik im Kapitel Rollen und Entscheidungen ergänzt
