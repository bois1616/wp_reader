# Tasks Done

## 2026-05-04

- WLAN-QR-Code fuer das Buero Unterseen als neues Asset
  `documents/onboarding/assets/qr_wlan_unterseen.png` erzeugt und im
  `Anhang Zugangsdaten und Codes` von
  `documents/onboarding/willkommen_an_bord.typ` eingebunden; PDF via
  `typst compile` erfolgreich aktualisiert

- Freigegebene Anpassungen aus
  `documents/onboarding/abgleich_original_entscheidungsliste.md` in
  `documents/onboarding/willkommen_an_bord.typ` umgesetzt: Formularhinweise
  und Verweise auf `Anhang I` in die relevanten Abschnitte eingearbeitet,
  `Anhang II` in `C.5` rueckgebunden, fehlenden `Anhang Zugangsdaten und
  Codes` mit aus dem Original uebernommenen Zugangsdaten ergaenzt,
  Benennung der Zugangsdaten-Verweise vereinheitlicht, die ICF-Anhangsnummer
  von III auf II korrigiert, mehrere vermeidbare Abkuerzungen im Fliesstext
  ausgeschrieben sowie Hinweis zu unbezahltem Urlaub und Versicherungsschutz
  wieder aufgenommen; PDF via `typst compile` erfolgreich aktualisiert

- Originaldokument `documents/external/korrekturlesen_willkommen_an_bord.md`
  gegen `documents/onboarding/willkommen_an_bord.typ` abgeglichen und
  Entscheidungsliste unter
  `documents/onboarding/abgleich_original_entscheidungsliste.md` erstellt;
  festgehalten wurden insbesondere fehlende Formularrueckverweise,
  verwaiste Anhaenge I und III, der fehlende Anhang Z fuer Zugangsdaten sowie
  einzelne potenziell relevante Inhaltsdifferenzen; keine Textaenderungen am
  Reader vorgenommen

- Separaten Bildpool-Stand vorbereitet: noch unversionierte Bilddateien unter
  `documents/onboarding/assets/` gesammelt fuer einen eigenen Commit;
  `documents/onboarding/bck.typ` bewusst ausserhalb von Git belassen

- Visuellen Feinschliff in `documents/onboarding/willkommen_an_bord.typ`
  abgeschlossen: Bildbreite in `B.5 Urlaub und Hafentage` leicht reduziert
  und Bildbreite in `C.7 Kleiderordnung` vergroessert, damit Text und Bilder
  ruhiger umfliessen und freie Seitenflaechen besser genutzt werden; PDF via
  `typst compile` erfolgreich geprueft

- Manuelle Editor-Aenderungen aus `documents/onboarding/bck.typ` gezielt in
  `documents/onboarding/willkommen_an_bord.typ` reintegriert; zurueckgeholt
  wurden insbesondere Bildwahl und Bildbreiten vieler `#aside-image`-Bloecke,
  die alternative Formulierung zu `B.3` mit `Referenzalter`, die
  ausfuehrlichere Fassung von `B.5`, die Bildumfluesse in `C.2/C.3` sowie der
  Haftungsausschluss beim Bootshaus; spaetere Fixes wie Gender-Anpassungen,
  `Anhang Z` und die bedingte Bildlogik vor Abschnitt B blieben erhalten; PDF
  via `typst compile` erfolgreich geprüft

## 2026-05-04

- Bedingte Bildlogik vor `Abschnitt B` in
  `documents/onboarding/willkommen_an_bord.typ` ergänzt: `assets/default.jpg`
  wird zentriert mit 70% Breite eingefügt, aber nur dann, wenn am
  Abschnittswechsel mehr als 50% der Inhaltsseite leer bleiben; PDF via
  `typst compile` erfolgreich geprüft

## 2026-05-04

- Freigegebene genderneutrale Anpassungen aus
  `documents/onboarding/gender_entscheidungsliste.md` in
  `documents/onboarding/willkommen_an_bord.typ` umgesetzt; geaendert wurden
  insbesondere Doppelformen bei `Mitarbeitenden`, `Arbeitgeber` →
  `Arbeitgeberin`, mehrere `Klienten`-Stellen sowie `fachmännisch` →
  `fachgerecht`; PDF via `typst compile` erfolgreich geprüft

## 2026-05-04

- Tabelle in `documents/onboarding/gender_entscheidungsliste.md` um die
  Spalte `Entscheidung` ergänzt, damit Freigaben direkt in der Liste erfasst
  werden koennen

## 2026-05-04

- Gender-Entscheidungsliste als Markdown-Datei unter
  `documents/onboarding/` angelegt, damit die vorgeschlagenen Formulierungen
  fallweise abgenommen werden koennen

## 2026-05-04

- Entscheidungsliste fuer genderneutrale Anpassungen in
  `documents/onboarding/willkommen_an_bord.typ` entlang der festgelegten
  Sprachlinie erstellt (`Mitarbeitende`, Plural-/Passivformen,
  `Arbeitgeberin` bzw. `Wegpiraten GmbH` je nach Kontext), ohne Aenderungen
  am Dokument vorzunehmen

## 2026-05-04

- Konkrete genderneutrale Formulierungsvorschlaege fuer markierte Stellen in
  `documents/onboarding/willkommen_an_bord.typ` ausgearbeitet; Konsistenz-
  entscheidungen fuer mehrfach auftretende Muster kenntlich gemacht, ohne
  Textanpassungen im Dokument vorzunehmen

## 2026-05-04

- Gender-Review fuer `documents/onboarding/willkommen_an_bord.typ`
  durchgefuehrt; Verstoesse gegen genderneutrale Sprache mit Fokus auf
  Lesefluss identifiziert und fuer spaetere Ueberarbeitung markiert, ohne
  inhaltliche Textaenderungen vorzunehmen

## 2026-05-04

- Zwei neue dokumentengeeignete Hochformat-Bilder fuer `Willkommen an Bord`
  erstellt und eingebunden: `assets/urlaub_planung_hoch.png` fuer B.5 Urlaub
  sowie `assets/spesen_hoch.png` fuer C.3 Spesen; Bildreferenzen in
  `willkommen_an_bord.typ` angepasst und PDF via `typst compile` erfolgreich
  geprüft

## 2026-05-03

- Kundenantworten eingearbeitet (26 Punkte aus antworten_zu_den_fragen.md):
  A.3 Überschrift → «Unsere Crew»; B.4 Stundenlohn-Satz + Tabelle gelöscht;
  B.5 Feiertage korrigiert (24.12. Arbeitstag), Hafentage angepasst (24., 27.–31.),
  Vertretungsregelung ergänzt, Tod Familie auf 1 Tag; B.6 Kadermitarbeitende
  komplett gestrichen; B.7 Weiterbildung neu (MA zahlt selbst, Lohnfortzahlung,
  angeordnete WB separat); B.8 Betriebsarzt bei Zweifeln ergänzt;
  B.9 Vaterschaftsurlaub Art. 329g OR; B.10 Unfallversicherung präzisiert;
  C.2 «Wegzeit» → «Fahrzeit» durchgängig, Tabelle Nr. 4 ausgeschrieben +
  Abgeltung wie SPF/DAF, Teamsitzung/Supervision-Regelung eingefügt;
  C.5 Entwicklungsberichte für UWB/DAF ergänzt; D.4 Arbeitssicherheit
  ohne AED/Unfallbuch; alle Kommentar-/Frageboxen entfernt
- Typst als einziges Quellformat: .md gelöscht, .typ ist kanonisch,
  PDF via `typst compile` erzeugt (4.0 MB)

## 2026-04-27

- Überarbeitungspaket 3: D.1 Standorte nach Region sortiert (Interlaken/Unterseen + Bootshäuser vor Bern); Bild Bootshaus Brienzersee ersetzt und Google-Earth-Link eingefügt; Büro Unterseen Front als neues Bild eingefügt; Anhang I Formularverzeichnis mit 5 realen Formularen als Tabelle aktualisiert; Frage zu Teamsitzungen/Supervision in C.2 ergänzt; Kundenfrage zur Leistungsabdeckung im Entwicklungsbericht hinzugefügt

## 2026-04-26 (Fortsetzung 2)

- Überarbeitungspaket 2 abgeschlossen: Präambel mit rowcolors + colortbl ergänzt;
  TOC nach Deckbild einfügen; A.2/A.3 Kommentarboxen vor Bilder verschieben (wrapfigure{r});
  A.4 zurück zu minipage für volle Listenbreite; B.4 Teilzeit-Beispiele (80%, 60%);
  B.8 «ausgerichtete (ausbezahlte)» Ausdruck erklären; C.5 Fragenkatalog + Bedürfnisebenen
  direkt einbauen (nicht mehr Anhang IV); Anhang I als Formularverzeichnis (F-01, F-02, F-03);
  Anhang III gekürzt + ICF-Kommentar zu CH-Referenz; Anhang IV entfernt;
  PDF kompiliert sauber

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
