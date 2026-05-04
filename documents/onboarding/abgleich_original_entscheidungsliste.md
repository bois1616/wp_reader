# Entscheidungsliste Abgleich Original vs. aktuelle Fassung

Stand: 04.05.2026

Verglichen wurden:

- Original: `documents/external/korrekturlesen_willkommen_an_bord.md`
- Aktuelle Fassung: `documents/onboarding/willkommen_an_bord.typ`

Ziel dieser Liste ist es, echte Inhaltslücken, Referenzbrüche und offene
Anhangsfragen sichtbar zu machen, ohne den aktuellen Reader bereits zu ändern.

## Kurzfazit

Die aktuelle Fassung ist in Struktur, Sprache und Leseführung deutlich
konsolidierter. Die meisten Kerninhalte aus dem Original sind übernommen oder
bewusst gestrafft worden.

Es gibt aber vier klare Problemfelder:

1. Formularprozesse sind inhaltlich noch erkennbar, aber nicht sauber an
   `Anhang I` oder an konkrete Dokumente rückgebunden.
2. `Anhang I` und `Anhang III` existieren, werden im Fliesstext jedoch nicht
   aktiv referenziert.
3. Es gibt mehrere Verweise auf Zugangsdaten, aber keinen vorhandenen
   `Anhang Z` und zusätzlich uneinheitliche Benennungen (`Anhang Z` vs.
   `Anhang Zugangsdaten`).
4. Einzelne operative Informationen aus dem Original wurden entfernt und
   sollten bewusst bestätigt oder gezielt zurückgeholt werden.

## Entscheidungsübersicht

| ID | Thema | Befund | Original | Aktuell | Empfehlung | Entscheidung |
| --- | --- | --- | --- | --- | --- | --- |
| E-01 | Arbeitszeitnachweis und Formulare | Im Original ist klar, dass für Arbeitszeitnachweise die vorgesehenen Formulare zu verwenden sind. In der aktuellen Fassung fehlt dieser Rückbezug vollständig. | `korrekturlesen_willkommen_an_bord.md:240`, `:436` | `willkommen_an_bord.typ:331`, `:463` | In `B.4` und/oder `C.2` wieder einen knappen Formularhinweis ergänzen und auf `Anhang I` oder direkt auf `F-01/F-02` verweisen. | einfügen. Die Arbeitszeitnachweise werden am Monatsanfang durch die Arbeitgeberin bereitgestellt und sind verbindlich zu verwenden. |
| E-02 | Urlaubsformular | Im Original wird Urlaub ausdrücklich schriftlich in einem Formular festgehalten. In der aktuellen Fassung steht nur noch «schriftlich festgelegt». Dadurch ist unklar, ob es ein fixes Formular gibt. | `korrekturlesen_willkommen_an_bord.md:248` | `willkommen_an_bord.typ:354` | Entscheiden, ob es weiterhin ein Urlaubsformular gibt. Falls ja: in `B.5` auf das konkrete Dokument oder mindestens auf `Anhang I` verweisen. | Mir ist kein Urlaubsformular bekannt. Schriftlich bzw Textform reichen. es bleibt aber dabei: Ohne schriftliche Bestätigung, keine implizite Genehmigung. |
| E-03 | Unbezahlter Urlaub und Versicherung | Der Hinweis «während des unbezahlten Urlaubs nicht über den Betrieb versichert» fehlt in der aktuellen Fassung vollständig. Das ist eher eine materielle als nur sprachliche Kürzung. | `korrekturlesen_willkommen_an_bord.md:252` | `willkommen_an_bord.typ:361`, `:420-426` | Fachlich prüfen und nur übernehmen, wenn die Aussage weiterhin korrekt ist. Falls korrekt, in `B.5` oder `B.10` wieder aufnehmen. | Unbedingt wieder aufnehmen. Füge einen "stummen Kommentar" --> /* ... */ im Dokument ein als TODO "Prüfe, welche Versicherungen weiterlaufen" und ein TODO "Sabbatical Regelung prüfen" |
| E-04 | Anhang I ist verwaist | `Anhang I — Formularverzeichnis` existiert, aber im aktuellen Reader gibt es keinen expliziten Fliesstext-Verweis auf den Anhang. | indirekt im Original über mehrere Formularstellen | `willkommen_an_bord.typ:863-877` | Mindestens an den betroffenen Stellen (`B.4`, `B.5`, `C.2`, `C.5`) kurze Verweise auf `Anhang I` ergänzen. | Ja, machen |
| E-05 | Formulare existieren extern, aber ohne Reader-Verknüpfung | Die im `Anhang I` gelisteten Formulare liegen im Repo bereits als PDFs vor, werden aber nirgends konkret benannt oder verlinkt. | nicht als strukturierter Anhang, aber inhaltlich vorhanden | Externe Dateien vorhanden unter `documents/external/Formulare/` | Entscheiden, ob `Anhang I` nur ein Verzeichnis bleibt oder ob dort zusätzlich konkrete Dateinamen/Pfade genannt werden sollen. | Eine Ablage ist nicht definiert, nur so etwas wie "liegen auf dem Laufwerk". es ist zu prüfen, ob die Dokumente, die im PDF Format vorliegen entweder aufwändig als Faksimile hier eingebunden werden können. Wie hoch ist der Aufwand? |
| E-06 | Entwicklungsberichte ohne Formularreferenz | Für Entwicklungsberichte gibt es im Reader eine ausführliche fachliche Anleitung, aber keinen Hinweis auf die zugehörige Vorlage aus `Anhang I`. | `korrekturlesen_willkommen_an_bord.md:440` | `willkommen_an_bord.typ:542-576`, `:870-871` | In `C.5` einen kurzen Verweis auf `F-02 Vorlage Entwicklungsberichte` ergänzen. | Ja |
| E-07 | Aufnahmegespräch / Quickinfos / Evaluation SPF ohne Rückverweis | `Anhang I` listet mehrere operative Formulare (`F-03` bis `F-05`), im Fliesstext der neuen Fassung tauchen diese aber praktisch nicht mehr auf. | im Original thematisch vorhanden, aber verstreut | `willkommen_an_bord.typ:872-874` | Entscheiden, ob diese Formulare im Reader aktiv eingeführt werden sollen oder ob `Anhang I` bewusst nur als stilles Verzeichnis dient. | Wie vor. Zunächst als stilles Verzeichnis |
| E-08 | Anhang III ist verwaist | `Anhang III — ICF-Klassifikation` existiert, wird im aktuellen Reader nirgends referenziert. | ICF war im Original als eigener fachlicher Block vorhanden (`:659`, `:682`) | `willkommen_an_bord.typ:879-890` | In `C.5 Entwicklungsberichte` oder in einem fachlichen Abschnitt einen knappen Verweis auf `Anhang III` ergänzen. | Der Anhang ist kurz. Wäre es sinnvoll, ihn inline wieder in den text zu verschieben? Andere Textstellen sind auch nicht ausgelagert, z.B. der SPF Fragenkatalog. Das ist eh nicht ganz konsistent. |
| E-09 | Zugangsdaten-Anhang fehlt vollständig | Der Reader verweist mehrfach auf `Anhang Z`, aber ein solcher Anhang existiert im Dokument nicht. | Original enthält konkrete Zugangsdaten und Passwörter (`:1042-1144`) | `willkommen_an_bord.typ:811`, `:817`, `:841` | Höchste Priorität: entscheiden, ob ein separater vertraulicher Anhang `Z` wieder erstellt wird oder ob stattdessen auf ein anderes vertrauliches Dokument verwiesen wird. | Anhang Zugangsdaten erstellen. Daten aus dem original extrahieren. |
| E-10 | Uneinheitliche Bezeichnung für Zugangsdaten | Im aktuellen Reader steht teils `Anhang Zugangsdaten`, teils `Anhang Z — Zugangsdaten und Codes`. Das ist inkonsistent und verstärkt den Referenzbruch. | Original hatte keinen `Anhang Z`, sondern direkte Inhalte | `willkommen_an_bord.typ:762`, `:780`, `:811`, `:817`, `:841` | Eine einheitliche Bezeichnung festlegen. Vermutlich alles auf `Anhang Z — Zugangsdaten und Codes` vereinheitlichen. | ja, alles auf Anhang Zugangsdaten und Codes vereinheitlichen |
| E-11 | Konkrete Zugangsdaten für Bern und Unterseen fehlen im Reader | Das Original enthält konkrete Infos zum Sitzungszimmer-Buchungstool Bern sowie WLAN-Daten für Bern und Unterseen. In der neuen Fassung wurden diese offenbar bewusst ausgelagert, aber ohne vorhandenes Ziel-Dokument. | `korrekturlesen_willkommen_an_bord.md:1120-1144` | `willkommen_an_bord.typ:778-817` | Nicht zurück in den Hauptreader ziehen, aber in den fehlenden vertraulichen `Anhang Z` oder ein separates Secure-Dokument überführen. | Ja |
| E-12 | Stundenlohn-Information fehlt | Das Original nennt einen konkreten Stundenlohn mit Standdatum. Die aktuelle Fassung verzichtet vollständig darauf. Das kann Absicht sein, ist aber eine inhaltliche Differenz. | `korrekturlesen_willkommen_an_bord.md:240` | `willkommen_an_bord.typ:329-335` | Nur übernehmen, wenn der Reader weiterhin auch lohnbezogene Richtwerte enthalten soll. Sonst bewusst weglassen und als Straffungsentscheid bestätigen. | Bestätigt. Grund: Bei einer Änderung des Stundensatzes muss der Reader neu verfasst werden. Das ist kein fixes Datum. |
| E-13 | Fristdetail `Limmer spätestens 00:00 Uhr` fehlt | Im Original gibt es eine operative Präzisierung zum Monatsende. Diese ist im Reader nicht mehr enthalten. | `korrekturlesen_willkommen_an_bord.md:436` | `willkommen_an_bord.typ:331` | Entscheiden, ob diese Präzisierung wichtig genug für den Reader ist oder in ein separates Prozessdokument gehört. | B.4 ergänzen um diese Konkretisierung (sinngemäß): spätestens am letzten Tag im Monat 00:00 Uhr |

## Bereits jetzt gut abgedeckt

Diese Punkte wirken im neuen Reader bereits ausreichend übernommen oder bewusst
verbessert:

- Grundhinweis zur Vertraulichkeit und sensiblen Zugangsdaten
- Arbeitszeitlogik und Zeiterfassung
- Urlaubsgrundsätze und Urlaubsstundenberechnung
- Entwicklungsberichte mit Schreibregeln und Gliederung
- ICF-Inhalt als eigener Anhang
- Bürostandorte und Gebäudekontakte

## Wahrscheinlich wichtigste Folgeentscheide

1. Soll es einen echten `Anhang Z — Zugangsdaten und Codes` geben?
2. Soll `Anhang I` nur ein Verzeichnis bleiben oder aktiv im Text verankert
   werden?
3. Welche Formulare sollen im Reader konkret erwähnt werden?
4. Soll der fehlende Hinweis zum unbezahlten Urlaub fachlich wieder hinein?

## Dateihinweise zu vorhandenen Formularen

Im Repository vorhanden und passend zu `Anhang I`:

- `documents/external/Formulare/Vorlage  Leer Teamsitzung Stand 11.01.2026.pdf`
- `documents/external/Formulare/Interlaken Vorlage 2026 Entwicklungsberichte Wegpiraten .pdf`
- `documents/external/Formulare/Vorlage Aufnahmegespräch Wegpiraten GmbH.pdf`
- `documents/external/Formulare/VorlageXY Quickinfos Klientendaten Wegpiraten GmbH.pdf`
- `documents/external/Formulare/Evaluation SPF Wegpiraten.pdf`

Diese Dateien sind aktuell im Reader nicht direkt referenziert.
