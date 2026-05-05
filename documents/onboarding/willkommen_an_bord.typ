// ─────────────────────────────────────────────────────────────
// Willkommen an Bord — Wegpiraten GmbH
// Typst-Fassung des Onboarding-Readers
// ─────────────────────────────────────────────────────────────

#let wp-blue    = rgb("#1a5276")
#let wp-gold    = rgb("#c8a000")
#let wp-gray    = rgb("#f2f2f2")
#let wp-darkgray = rgb("#555555")
#let wp-lightblue = rgb("#d6eaf8")
#let body-top = 2.8cm
#let body-height = 29.7cm - 2.8cm - 2.4cm


#let aside-image(img-path, body, side: left, img-width: 34%) = {
  let img-col = img-width
  let text-col = 100% - img-width - 4%
  let cols = if side == left { (img-col, text-col) } else { (text-col, img-col) }
  let cells = if side == left {
    (
      align(horizon, image(img-path, width: 100%)),
      body,
    )
  } else {
    (
      body,
      align(horizon, image(img-path, width: 100%)),
    )
  }
  grid(columns: cols, gutter: 16pt, ..cells)
}

#let section-rule() = {
  v(4pt)
  line(length: 100%, stroke: 0.4pt + wp-darkgray.lighten(60%))
  v(4pt)
}

#let maybe-section-break-image(img-path, min-empty-ratio: 50%) = context {
  let pos = here().position()
  let threshold = body-top + body-height * (100% - min-empty-ratio)

  if pos != none and pos.y < threshold {
    [
      #v(1fr)
      #align(center)[
        #image(img-path, width: 70%)
      ]
      #v(1fr)
    ]
  }
}

// ─────────────────────────────────────────────────────────────
// Dokument-Setup
// ─────────────────────────────────────────────────────────────

#set document(title: "Willkommen an Bord", author: "Wegpiraten GmbH", date: datetime.today())

#set page(
  paper: "a4",
  margin: (top: 2.8cm, bottom: 2.4cm, left: 2.5cm, right: 2.5cm),
)

#set text(font: "Liberation Sans", size: 10.5pt, lang: "de", region: "ch")
#set par(justify: true, leading: 0.7em)
#set block(above: 0.8em, below: 0.8em)

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  v(8pt)
  block(
    width: 100%,
    below: 14pt,
    {
      set text(size: 18pt, weight: "bold", fill: wp-blue)
      it.body
      v(2pt)
      line(length: 100%, stroke: 2pt + wp-gold)
    }
  )
}

#show heading.where(level: 2): it => {
  v(16pt)
  block(
    below: 8pt,
    {
      set text(size: 13pt, weight: "bold", fill: wp-blue)
      it.body
    }
  )
  v(2pt)
}

#show heading.where(level: 3): it => {
  v(10pt)
  block(
    below: 6pt,
    {
      set text(size: 11pt, weight: "bold", fill: wp-blue.lighten(20%))
      it.body
    }
  )
}

#show heading.where(level: 4): it => {
  v(8pt)
  block(
    below: 4pt,
    {
      set text(size: 10.5pt, weight: "bold", fill: wp-darkgray)
      it.body
    }
  )
}

#show link: it => {
  set text(fill: wp-blue)
  underline(it)
}

// Tabellen-Styling
#set table(
  stroke: 0.5pt + wp-darkgray.lighten(50%),
  inset: 6pt,
  fill: (_, y) => if y == 0 { wp-blue } else if calc.odd(y) { wp-gray } else { white },
)
#show table.cell.where(y: 0): set text(weight: "bold", size: 9.5pt, fill: white)

// ─────────────────────────────────────────────────────────────
// Titelseite
// ─────────────────────────────────────────────────────────────

#page(margin: 0pt, header: none, footer: none)[
  #image("assets/wegweiser_mit_baer.png", width: 100%, height: 55%)
  #v(1fr)
  #align(center)[
    #block(inset: (x: 40pt))[
      #text(size: 32pt, weight: "bold", fill: wp-blue)[Willkommen an Bord]
      #v(8pt)
      #text(size: 16pt, fill: wp-darkgray)[Dein Wegweiser bei den Wegpiraten GmbH]
      #v(24pt)
      #line(length: 40%, stroke: 2pt + wp-gold)
      #v(16pt)
      #text(size: 11pt, fill: wp-darkgray)[2026]
    ]
  ]
  #v(1fr)
]

// ─── Ab hier: Kopf-/Fusszeile ───

#set page(
  header: context {
    if counter(page).get().first() > 1 {
      set text(size: 8pt, fill: wp-darkgray)
      grid(
        columns: (1fr, 1fr),
        align(left)[Wegpiraten GmbH],
        align(right)[Willkommen an Bord],
      )
      v(-2pt)
      line(length: 100%, stroke: 0.3pt + wp-darkgray.lighten(60%))
    }
  },
  footer: context {
    set text(size: 8pt, fill: wp-darkgray)
    grid(
      columns: (1fr, 1fr),
      align(left)[Vertraulich — nur für internen Gebrauch],
      align(right)[Seite #counter(page).display("1")],
    )
  },
)

// ─────────────────────────────────────────────────────────────
// Inhaltsverzeichnis
// ─────────────────────────────────────────────────────────────

#page[
  #v(20pt)
  #text(size: 18pt, weight: "bold", fill: wp-blue)[Inhaltsverzeichnis]
  #v(4pt)
  #line(length: 100%, stroke: 2pt + wp-gold)
  #v(12pt)
  #outline(title: none, depth: 2, indent: 1.2em)
]

// ═════════════════════════════════════════════════════════════
// INHALT
// ═════════════════════════════════════════════════════════════

= Ziel und Zweck dieses Readers

Dieses Reglement fasst alle bestehenden Beschlüsse, Richtlinien und Vereinbarungen zusammen, die das Anstellungsverhältnis innerhalb der Wegpiraten GmbH betreffen. Es definiert Rechte und Pflichten, schafft klare Rahmenbedingungen und beschreibt sowohl die Erwartungen an die zu erbringenden Leistungen als auch die gelebte Unternehmenskultur.

Die Bestimmungen gelten für sämtliche Mitarbeitenden der Wegpiraten GmbH. Als rechtliche Hauptgrundlagen dienen das Schweizerische Obligationenrecht (OR), das Arbeitsgesetz (ArG) sowie die entsprechenden Verordnungen (ArGV). Ergänzende Grundlagen bilden der Arbeitsvertrag, der Stellenbeschrieb und interne Weisungen.

#block(
  width: 100%,
  fill: wp-lightblue.lighten(40%),
  stroke: 0.5pt + wp-blue.lighten(60%),
  inset: 10pt,
  radius: 4pt,
)[
  *Hinweis:* Dieses Dokument enthält sensible Informationen, darunter interne Zugangsdaten und vertrauliche betriebliche Inhalte. Bitte entsprechend sorgfältig damit umgehen.
]

= Abschnitt A — Willkommen & Orientierung

== A.1 Wer wir sind und was wir tun

#aside-image("assets/bab_gemeinsamer_moment.jpg", side: left, img-width: 40%)[
  Wir sind die Wegpiraten GmbH — ein multiprofessionelles Team von Sozialpädagoginnen und Sozialpädagogen mit Standorten in Unterseen/Interlaken und Bern. Unsere Arbeit ist systemisch, erlebnispädagogisch und konsequent auf die Menschen ausgerichtet, mit denen wir arbeiten.

  #v(6pt)
  Wir begleiten Familien in herausfordernden Lebenssituationen, stärken Erziehungskompetenzen und sichern den Kinderschutz. Dabei sind wir auf Augenhöhe, neugierig und verbindlich.
]

#v(8pt)

- Wir kontrollieren die Sicherheit und die altersadäquate Umgebung der Kinder.
- Wir sichern den Kinderschutz ab.
- Wir stärken die Erziehungskompetenzen der Personensorgeberechtigten.
- Wir ermöglichen den Kontakt zwischen Kindern und ihren Eltern.
- Wir erkennen Ressourcen-Schätze und heben sie gemeinsam mit der Familie.
- Wir arbeiten systemisch, interdisziplinär, partizipativ und immer auf Augenhöhe.
- Wir führen Fallakten und schreiben Entwicklungsberichte.
- Wir verlassen uns auf unsere starke Crew, die immer hinter uns steht.
- Wir sind gerne unterwegs und in Bewegung — Kanu fahren, SUP paddeln, wandern, Fahrradfahren, klettern, segeln, Eislaufen, Schlitteln, Skifahren.
- Wir arbeiten erlebnispädagogisch und bauen Sequenzen zum Explorieren in unsere Arbeit ein.

== A.2 Unsere Grundhaltung

#aside-image("assets/intake_freundlich.jpg", side: left, img-width: 40%)[
  - Hilfe zur Selbsthilfe — So wenig wie möglich, so viel wie nötig
  - Sich selber überflüssig machen.
  - Eltern machen es so gut sie können. Wir sensibilisieren für eine Lösung.
  - Zukunftsfokus und konsequente Umsetzung der Abmachungen.
  - Ich bin verbindlich und verlässlich — und erwarte das auch vom Gegenüber.
  - Ich arbeite *ressourcenorientiert und systemisch*: alle Player werden involviert.
]
#aside-image("assets/mediation_1.jpg", side: right, img-width: 40%)[
  - *Allparteilichkeit* — ich schlage mich auf keine Seite.
  - Positive Grundhaltung, Wertschätzung, Menschenfreude. Es darf auch gelacht werden.
  - Authentisch sein — auch mal sagen, wenn etwas gerade schwierig ist.
  - Die Familie ist Expertin für ihre eigenen Themen. Jedes Mal wieder eine neue Chance.
  - Ich will mit meinem Dasein etwas bewegen. In die Handlung gehen mit ihnen.
  - Begleiten, nicht Erziehen. Auf Augenhöhe. Gesunde Abgrenzung.
  - Wir repräsentieren das Gesetz und haben einen Auftrag — Transparenz der Tatsachen.
]

#v(6pt)
Dabei lassen wir die Schuldfrage aussen vor und halten uns an drei Punkte:

+ *Beobachten.*
+ *Rahmenbedingungen stecken.*
+ *Nicht Urteilen.*

== A.3 Unsere Crew

#aside-image("assets/zusammenarbeit_2.jpg", side: right, img-width: 40%)[
  - Abgeschlossenes Studium in Pädagogik, Sozialpädagogik, Sozialer Arbeit oder Kindheitspädagogik.
  - Eigenständiges Betreuen der anvertrauten Klientinnen und Klienten mit lückenloser Dokumentation.
  - Belastbarkeit, Freude an der Arbeit, Prioritäten setzen können.
  - Interesse an Abenteuer- und Erlebnispädagogik.
  - Spielideen und Methoden für die systemische Familienarbeit.
  - Versierter Umgang mit Office- und iOS-Programmen sowie digitalen Medien.
  - Selbstständiges Arbeiten, Professionalität und Flexibilität.
  - Absolute Zuverlässigkeit und Pünktlichkeit, humorvoll, ehrlich, engagiert.
  - Das Herz sitzt bei dir am richtigen Fleck — du bist jemand, den du selbst gerne treffen würdest.
]

#v(4pt)
#align(center)[
  #text(size: 12pt, weight: "bold", fill: wp-blue)[Willkommen an Bord in Unterseen oder Bern!]
]

== A.4 Was du von uns erwarten kannst

#aside-image("assets/zusammenarbeit_3.jpg", side: left, img-width: 40%)[
  Ein vielseitiger, moderner Arbeitsplatz mit echtem Teamrückhalt — das erwartet dich bei den Wegpiraten.

#v(6pt)

- Nutzung sämtlicher Materialien und Arbeitsmittel der Wegpiraten GmbH
- Arbeitsplätze an zentraler Lage in Unterseen/Interlaken oder Bern
- Individuell gestaltbare Arbeitszeitmodelle ab einem Pensum von 50%
- Fort- und Weiterbildungsmöglichkeiten sowie gemeinsame Teamtage
]
- Partizipative Teamkultur mit aktiver Einbindung eigener Ideen
- Ein multiprofessionelles Team mit kollegialer Zusammenarbeit und gegenseitiger Unterstützung
- Klar strukturierte Einsätze, transparente Organisation und verlässliche Kommunikation
- Regelmässige pädagogische Begleitung — unter anderem in Form von Monatsgesprächen
- Etablierte Feedback-Kultur und eine lösungsorientierte Haltung im Umgang mit Fehlern
- Kontinuierliche Weiterentwicklung des pädagogischen Methodenpools
- Gute Vernetzung mit regionalen Akteurinnen und Akteuren sowie Kooperationspartnern
- Regelmässige Teamsitzungen und Supervisionen
- 30 Urlaubstage pro Jahr
- Zusätzlich vier *freiwillige* «Hafentage» zwischen den Feiertagen im Dezember (24.12. sowie 27.12. bis 31.12.)

#maybe-section-break-image("assets/default.jpg")

= Abschnitt B — Anstellungsverhältnis

== B.1 Form und Dauer

Mitarbeitende werden im sozialpädagogischen Bereich der Wegpiraten GmbH angestellt und arbeiten insbesondere in der Sozialpädagogischen Familienbegleitung (SPF) sowie in der Unterstützung bei der Wahrnehmung des Besuchsrechts.

Der hauptsächliche Arbeitsort ist in den Büroräumlichkeiten der Wegpiraten GmbH an der Hauptstrasse 47, 3800 Unterseen, oder an der Maulbeerstrasse 10, 3011 Bern. Zusätzlich werden Einsätze im Sozialraum der Klientinnen und Klienten durchgeführt.

Das Arbeitsverhältnis wird durch einen schriftlichen Einzelarbeitsvertrag begründet. Ohne besondere Vereinbarung wird der Arbeitsvertrag auf unbestimmte Dauer abgeschlossen.

== B.2 Probezeit

Die ersten drei Monate eines unbefristeten Arbeitsverhältnisses gelten als Probezeit. Nach deren Ablauf gilt das Arbeitsverhältnis weiterhin als unbefristet.

== B.3 Kündigungsfristen

Das Arbeitsverhältnis kann ordentlich und schriftlich wie folgt gekündigt werden:

- *In den ersten zwei Dienstjahren:* Kündigungsfrist von zwei Monaten
- *Ab dem dritten Dienstjahr:* Kündigungsfrist von drei Monaten

Die Kündigung erfolgt jeweils schriftlich auf das Ende eines Kalendermonats. Eine sofortige Kündigung ist insbesondere möglich, wenn eine rechtskräftige Verurteilung wegen einer Straftat vorliegt.
Das Arbeitsverhältnis endet automatisch auf das Ende des Monats, in dem die arbeitnehmende Person das ordentliche Referenzalter erreicht; eine Kündigung ist nicht erforderlich.

== B.4 Lohn

Die akzeptierten Leistungen sowie nachgewiesene und bewilligte Spesen werden monatlich vergütet. Die Mitarbeitenden verpflichten sich, jeweils bis spätestens am letzten Tag des Monats um 00:00 Uhr für den vergangenen Monat eine Auflistung der Stunden (Arbeitszeitnachweis) zu erstellen und einzureichen — sowohl bei der Buchhaltung (buchhaltung\@wegpiraten.ch) als auch bei Frau Wloka (info\@wegpiraten.ch). Die Arbeitszeitnachweise werden jeweils am Monatsanfang durch die Arbeitgeberin bereitgestellt und sind verbindlich zu verwenden. Weitere Formulare sind im *Anhang I — Formularverzeichnis* aufgeführt.

=== Dreizehnter Monatslohn

Der 13. Monatslohn wird, wenn nicht anders vereinbart, jeweils per Ende Jahr ausbezahlt. Bei einem Austritt unter dem Jahr wird er anteilsmässig berechnet und mit dem definitiven Austritt ausbezahlt.

== B.5 Urlaub und Hafentage

#aside-image("assets/urlaub_planung_hoch.png", side: left, img-width: 38%)[
  Es besteht Anspruch auf *dreissig* bezahlte Urlaubstage pro Jahr. Eine reguläre Arbeitswoche besteht aus *fünf* Arbeitstagen (Montag - Freitag) zu je *acht* Arbeitsstunden. Bei einer Teilzeitbeschäftigung reduziert sich die zu leistende Stundenzahl je Arbeitstag, nicht aber die Anzahl Arbeitstage. Der individuelle Arbeitsanteil ist im Arbeitsvertrag oder einer entsprechenden schriftlichen Zusatzvereinbarung festgelegt.

  === Urlaubsstundenberechnung

  #table(
    columns: (auto, auto, auto, auto),
    [Arbeitsanteil], [Urlaubstage], [Stunden / Tag], [Urlaubsstunden / Jahr],
    [100%], [30], [8,0], [240],
    [80%], [30], [6,4], [192],
    [60%], [30], [4,8], [144],
  )

  #v(4pt)
  Die zeitliche Lage des Urlaubs wird in Abstimmung mit der Arbeitgeberin schriftlich in Textform festgelegt und ist erst mit Genehmigung und Unterschrift gültig. Urlaub ist selbstständig im digitalen Kalender einzutragen. Eine Abwesenheitsnotiz im E-Mail-Programm ist selbstständig zu schalten und nach Rückkehr wieder zu entfernen.
]

*Übertrag und Verfall:* Die Arbeitnehmenden sollen ihren Urlaub im Kalenderjahr nehmen. In Ausnahmefällen können bis zu *zehn* Urlaubstage in das folgende Kalenderjahr übernommen werden. Diese sind spätestens bis zum *31. März des Folgejahres* zu nehmen. Urlaubstage, die über diesen Übertrag (zeitlich oder in der Menge) hinausgehen, verfallen ohne Kompensation. Eine ausdrückliche Aufforderung zur Urlaubsnahme durch die Arbeitgeberin ist nicht erforderlich.

*Vertretungsregelung:* Bei Abwesenheit (Urlaub oder Krankheit) ist die Leitung zu informieren. Diese übernimmt die Vertretung oder sorgt für fachgerechten Ersatz.

Erkranken Mitarbeitende während des Urlaubs, werden die Urlaubstage (ohne Wochenenden) nachgewährt, wenn ein ärztliches Zeugnis vorgelegt wird. Sonderurlaub ohne Lohn kann bei wichtigem Grund und wenn die betrieblichen Verhältnisse es gestatten gewährt werden. Während eines unbezahlten Urlaubs besteht kein Versicherungsschutz über den Betrieb.
/* TODO: Prüfe, welche Versicherungen bei unbezahltem Urlaub weiterlaufen. */
/* TODO: Sabbatical-Regelung prüfen. */

Für die Buchhaltung werden die Arbeitsstunden prozentual herabgesetzt, nicht die Wochentage verkürzt.

=== Dienstfreie Tage (Feiertage)

- 1. und 2. Januar (Neujahr)
- Karfreitag, Ostermontag, Auffahrt, Pfingstmontag
- 1. August (Nationalfeiertag)
- 25. und 26. Dezember (Weihnachten)
- #text(fill: wp-blue, weight: "bold")[Wegpiraten BONUS — Hafentage:] 24., 27. bis 31. Dezember

=== Bezahlte Sonderfreitage

#table(
  columns: (1fr, auto),
  [Anlass], [Freitage],
  [Eigene Hochzeit], [2 Tage],
  [Hochzeit naher Verwandter], [1 Tag],
  [Tod innerhalb der Familie (1. Grad)], [1 Tag],
  [Tod naher Verwandter (Tante, Onkel u.\u{a0}a.)], [1 Tag],
  [Wohnungswechsel / Umzugstag], [1 Tag],
)

== B.6 Überstunden

#aside-image("assets/supervision_3.jpg", side: left, img-width: 40%)[
  Überstunden sind unverzüglich zu melden. Sie werden primär durch Freizeit gleicher Dauer kompensiert, spätestens innert eines Jahres.

  #v(4pt)
  Sollte eine Kompensation durch Freizeit aus unvorhergesehenen Gründen nicht möglich sein, kann nach vorheriger Rücksprache mit der Arbeitgeberin ausnahmsweise eine Auszahlung zum Stundensatz ohne Zuschlag (1:1) vereinbart werden. Bei Austritt erfolgt die Auszahlung ohne Zuschlag, sofern eine Kompensation nicht möglich war.
]

== B.7 Weiterbildung

Weiterbildung wird von den Mitarbeitenden selbst finanziert. Pro Jahr stehen fünf Weiterbildungstage zur Verfügung, an denen der Lohn fortgezahlt wird. Nicht genutzte Tage verfallen am Jahresende.

Eine von der Arbeitgeberin angeordnete Weiterbildung hat keinen Einfluss auf die fünf Weiterbildungstage.

== B.8 Arztzeugnis und Krankheit

Die Wegpiraten GmbH verlangt ab dem dritten Krankheitstag ein Arztzeugnis. Wird dies unterlassen, kann der ausgerichtete (ausbezahlte) Lohn gekürzt werden. Wenn begründete Zweifel an der Arbeitsunfähigkeit bestehen, behält sich die Wegpiraten GmbH vor, ein Gutachten durch einen Betriebsarzt vornehmen zu lassen. In jedem Fall ist die direkte vorgesetzte Person unmittelbar zu informieren.

== B.9 Mutterschafts- und Vaterschaftsurlaub

Mitarbeiterinnen haben Anspruch auf einen Mutterschaftsurlaub von 14 Wochen (98 Tagen), der am Stück zu nehmen ist. Der Anspruch beginnt am Tag der Geburt. Bei längerem Spitalaufenthalt des Kindes kann die Verschiebung beantragt werden.

Väter haben Anspruch auf einen zweiwöchigen Vaterschaftsurlaub nach Art. 329g OR.

== B.10 Versicherungen

=== Sozialbeiträge und Auszahlung

Von den Salärzahlungen kommen die Prämien der gesetzlich vorgeschriebenen Sozialversicherungen (AHV/IV/EO/ALV) sowie allfällige Zusatzversicherungen oder die Quellensteuer in Abzug. AHV/ALV und Pensionskasse werden nach gesetzlichen Richtlinien abgerechnet. Die monatlichen Salärzahlungen werden spätestens am Ende des Monats bargeldlos überwiesen.

=== Pensionskasse

Die Wegpiraten GmbH versichert das Personal gegen die wirtschaftlichen Folgen der Invalidität und des Alters im Rahmen des BVG. Der Versicherer ist Noventus Pensionskassen.

=== Kranken- und Unfallversicherung

*A.* Betriebs- und Nichtbetriebsunfallversicherung (NBUV) bei der Helsana, zu Lasten der Wegpiraten GmbH gemäss UVG. Die Prämien für die Nichtbetriebsunfallversicherung gehen zu Lasten der Wegpiraten GmbH.

*B.* Krankentagegeldversicherung bei der Mobiliar mit 30 Tagen Wartefrist. Die Prämien werden je zur Hälfte von den Mitarbeitenden und von der Wegpiraten GmbH getragen.

Es gilt, dass alle Mitarbeitenden unfallversichert sind — auf dem Weg zur Arbeit, während der Arbeitszeit und während des Urlaubs. Dies gilt auch für Fahrten mit dem Fahrrad zu Klientinnen und Klienten oder mit ihnen.

== B.11 Schweigepflicht

#aside-image("assets/datenschutz_1.jpg", side: left, img-width: 40%)[
Mitarbeitende unterstehen der beruflichen Schweigepflicht. Es ist untersagt, Informationen über Kinder, Jugendliche oder deren Angehörige, die im Rahmen der beruflichen Tätigkeit erlangt werden, sowohl während als auch nach Beendigung des Arbeitsverhältnisses an unbefugte Dritte weiterzugeben.

Akten und vertrauliche Unterlagen dürfen ohne Zustimmung der vorgesetzten Stelle grundsätzlich keiner Person zugänglich gemacht werden — auch nicht den betroffenen Kindern oder Jugendlichen. Die Verletzung des Berufsgeheimnisses ist gemäss Art. 321 StGB strafbar.
]

Die Schweigepflicht entfällt, wenn die gesetzliche Vertretung des Kindes eine ausdrückliche Auskunftsermächtigung erteilt oder wenn eine gesetzliche Offenlegungspflicht besteht. Besteht der begründete Verdacht, dass die körperliche oder seelische Integrität eines Kindes gefährdet ist, besteht eine *unverzügliche Informationspflicht* gegenüber der vorgesetzten Stelle.

/* #maybe-section-break-image("assets/default.jpg") */

= Abschnitt C — Arbeiten bei den Wegpiraten

== C.1 Stellenbeschreibung

#aside-image("assets/uebergabe_2.jpg", side: left, img-width: 40%)[
  Die sozialpädagogische Arbeit basiert auf der Leistungsbeschreibung «Sozialpädagogische Familienbegleitung» (Fassung 05.10.2022) sowie auf den Leistungsvereinbarungen des Bereichs «Unterstützung bei der Wahrnehmung des Besuchsrechts».

  #v(4pt)
  Art, Ziel und Umfang der Unterstützungsleistungen ergeben sich aus dem Gesetz über die Leistungen für Kinder mit besonderem Förder- und Schutzbedarf (KFSG) vom 03.12.2020. Übergeordnetes Ziel ist die Förderung der Beziehung des jungen Menschen zu seiner Herkunftsfamilie.
]

#v(4pt)
Die Tätigkeit erfolgt überwiegend im häuslichen Umfeld der Familien, im Sozialraum sowie in den Räumlichkeiten der Wegpiraten GmbH. Die Arbeit wird im Rahmen der ambulanten Familienbegleitung weitgehend selbständig ausgeführt.

*Der Aufgabenbereich umfasst insbesondere:*

- Elterncoaching und Unterstützung in Erziehungsfragen
- Einzelbegleitungen
- Abklärungen im Rahmen des Kinderschutzes
- Begleitungen im Rahmen des Besuchsrechts
- Unterstützung bei der Strukturierung des Familienalltags
- Förderung stabiler Beziehungen innerhalb des Familiensystems
- Aktivierung und Erschliessung informeller und materieller Ressourcen (z.\u{a0}B. Transferleistungen)

== C.2 Arbeitszeitnachweis und Stundenerfassung

Für die Zeitabrechnung werden folgende Anteile erfasst: Direktkontakt, Fahrzeit und indirekte Fallarbeit. Die Zeiterfassung erfolgt gemäss dem effektiven Aufwand, gerundet auf fünf Minuten. Intern sind die Tätigkeiten detailliert festzuhalten. Das KJA kann die interne Zeiterfassung einfordern. Der Arbeitszeitnachweis wird auf dem jeweils von der Arbeitgeberin bereitgestellten Formular geführt. Weitere Formulare sind im *Anhang I — Formularverzeichnis* aufgeführt.

*Zu deklarieren:*

- Direktkontakt mit der Familie
- Fallbezogene Arbeit
- Fahrzeit

=== Überblick Leistungen und Abgeltung
#block(breakable: false)[
  #table(
    columns: (auto, 1fr, 1.5fr, auto),
    [Nummer], [Leistung], [Bemerkungen], [Abgeltung],
    [1], [SPF (Sozialpädagogische Familienbegleitung)], [Fahrzeit und indirekte Fallarbeit abgegolten.], [Pro Stunde, 5-Min.-Takt],
    [2], [UWB Ausübung Gruppe], [Keine Fahrzeit, keine indirekte Fallarbeit.], [Pro Stunde],
    [3], [UWB Übergabe Gruppe], [Keine Fahrzeit, keine indirekte Fallarbeit. Pro Besuch.], [Pro Stunde],
    [4], [UWB Begleitung individuell (Unterstützung bei der Wahrnehmung des Besuchsrechts)], [Fahrzeit und indirekte Fallarbeit abgegolten. Maximal 10\u{a0}Stunden Direktkontakt.], [Pro Stunde, 5-Min.-Takt],
    [5], [DAF (Langzeitunterbringung Familienpflege)], [Fahrzeit und indirekte Fallarbeit abgegolten.], [Pro Stunde, 5-Min.-Takt],
  )
]

=== SPF — Detailregeln

Für jede Stunde im Direktkontakt mit der Familie kann höchstens eine halbe Stunde für indirekte fallbezogene fachliche Arbeit verrechnet werden (50%-Regelung). Diese gilt nicht bei ungeplanten Abbrüchen während der ersten drei Monate sowie bei indizierten Kurzeinsätzen bis zu drei Monaten.

=== Tätigkeitskategorien

*Direktkontakt mit der Familie:*

- Begleitung der Familie
- Vor- oder Nachbesprechungen mit den Eltern
- Beratung von Eltern (telefonisch, E-Mail, WhatsApp)

*Indirekte fallbezogene fachliche Arbeit:*

- Vor- und Nachbereitung einschliesslich Verfassen von Berichten und Aktennotizen
- Kontakt mit Leistungsbestellenden, Fallbesprechungen, Fallsupervision
- Fallbezogene Arbeit mit dem sozialen Netzwerk
- Fachliche fallübergreifende Aufwände (z.\u{a0}B. Supervision, Teamsitzung)

*Fahrtzeit:* Hin- und Rückweg zu den Familien (Tür zu Tür)

=== Sonntags- und Abendarbeit

Im Grundsatz sind zwischen Samstag 23 Uhr und Sonntag 23 Uhr sowie generell nach 20 Uhr keine Einsätze vorgesehen. In Ausnahmefällen können Leistungsbesteller mit Begründung von dieser Regelung absehen.

=== Teamsitzungen und Supervision

#aside-image("assets/supervision_2.jpg", side: left, img-width: 40%)[
Teamsitzungen und Supervisionen finden je viermal pro Jahr statt (in der Regel einmal pro Quartal). Die Teilnahme ist verpflichtend.

- *Supervision:* Wird geleitet und organisiert durch eine externe Firma.
- *Teamsitzung:* Wird geleitet und geführt durch die Leitung oder eine Fachperson. Die Dokumentation erfolgt ebenfalls durch die Leitung.
]

=== Spezialfälle

- Dolmetschkosten gehen zu Lasten des KJA Bern.
- Nicht eingehaltene Termine und Absagen weniger als 24 Stunden vor dem Einsatz können ohne die entsprechende Fahrzeit auf dem Arbeitszeitnachweis deklariert werden.

== C.3 Spesen

#aside-image("assets/spesen_hoch.png", side: left, img-width: 33%)[
  Quittungen und Rechnungen (im Original) sind mit dem Namenskürzel der Klientin/des Klienten und einer kurzen Beschreibung des Verwendungszwecks zu versehen (z.\u{a0}B. «Klient:in HaWu — Zvieri»).

  #v(4pt)
  Sie sind zusammen mit der Spesentasche fristgerecht zum Monatsende ans Büro in Unterseen einzureichen. Oben auf jedem Abrechnungsblatt stehen Name der Fachperson und Abrechnungsmonat mit Jahreszahl.
  #v(4pt)
  Die Quittungen werden auf ein DIN-A4-Blatt geklebt (ohne zu überlappen). Betrag in CHF und Datum sind mit einem auffälligen Marker zu unterstreichen.

  #v(4pt)
  Spesen werden monatlich separat ausbezahlt. Bei Bedarf kann ein Spesenvorschuss bei der Geschäftsführung beantragt werden.
]

== C.4 Stundenerhöhung pro Monat

Sollte das bewilligte Stundenkontingent bei den Klientinnen und Klienten für einen Monat nicht ausreichen, ist die sozialpädagogische Fachperson im Voraus darüber zu informieren. Mehrstunden müssen schriftlich bei der zuständigen Fachperson im Amt oder bei der Behörde beantragt und ausdrücklich schriftlich genehmigt werden.

== C.5 Entwicklungsberichte

Entwicklungsberichte werden für SPF, UWB und DAF nach dem gleichen Muster geschrieben. Sie sind immer bis zum angegebenen Datum bei der Leitung einzureichen. Sie werden mithilfe eines externen Lektors und KI korrigiert und dann von Frau Wloka versendet. Die zuständige Fachperson wird in der versendeten E-Mail an den Leistungsbesteller in CC gesetzt. Eigenständig, ohne Genehmigung, werden keine Entwicklungsberichte vom Personal versendet. Die zugehörige Vorlage ist im *Anhang I — Formularverzeichnis* als *F-02 Vorlage Entwicklungsberichte* aufgeführt.

Als Orientierung dienen vorhandene ältere Entwicklungsberichte, die als Beispiel herangezogen werden können. Für die fachliche Einordnung kann zusätzlich der *Anhang II — ICF-Klassifikation* beigezogen werden.

=== Aufbau und Schreibweise

- Schreiben im Präsens (z.\u{a0}B. «Ich laufe»)
- Datum: 05.04.2023 | Uhrzeit: 10:00 Uhr
- _«Wörtliche Rede»_ kennzeichnen — kursiv
- Ganze Sätze mit Der, Die, Das
- Abkürzungen: KM, KV, KE (Kindesmutter, Kindesvater, Kindeseltern)
- Die Namen der Klientinnen und Klienten werden ausgeschrieben (z.\u{a0}B. Max, Franz, Heidi)
- STAO = das Standortgespräch (nicht «eine STAO»)
- Bei Aufzählungen kein Punkt am Ende
- «beim Sozialdienst XY» oder «im Sozialdienst XY» (nicht «auf dem Sozialdienst»)

=== Gliederung des Entwicklungsberichts

#table(
  columns: (auto, auto, 1fr),
  [Nummer], [Abschnitt], [Inhalt],
  [1], [Aktuelle Situation], [Ausgangslage, Anlass, Auftrag und Ziele],
  [2], [Familiensituation], [Wohnsituation, Rollenverteilung, Kooperation, Belastungen, Ressourcen],
  [3], [Entwicklung und Wohl des Kindes], [Emotionales, soziales, kognitives, körperliches Wohlbefinden],
  [4], [Bindung und Beziehungsgestaltung], [Bindungsqualität, Interaktion zwischen Kind und Bezugspersonen],
  [5], [Gesundheit und Versorgung], [Körperliche und psychische Gesundheit, Therapieanbindung],
  [6], [Schutz- und Risikofaktoren], [Relevante Faktoren in Bezug auf das Kindeswohl],
  [7], [Einschätzung des Kindeswohls], [Fachliche Gesamteinschätzung],
  [8], [Verlauf der Massnahme], [Bisherige Zusammenarbeit, Massnahmen, Wirkung],
  [9], [Fachliche Einschätzung], [Zusammenfassende sozialpädagogische Beurteilung],
  [10], [Perspektiv- und Handlungsempfehlung], [Empfehlung für zukünftige Massnahmen],
  [11], [Ausblick und Schlussbemerkung], [Grenzen der Einschätzung, abschliessende Bemerkungen],
)

=== Fragenkatalog für Fachpersonen

Bei der Erstellung von Entwicklungsberichten dienen die folgenden Fragen als Leitfaden:

==== 1. Beobachtungen zum kindlichen Wohl

- Welche Beobachtungen haben Sie bezüglich des emotionalen Wohlbefindens der Kinder gemacht?
- Wie zeigen sich die Kinder im Umgang mit Stress, Konflikten oder familiären Belastungen?
- Welche Entwicklungsfortschritte oder -verzögerungen nehmen Sie derzeit wahr?
- Gibt es Hinweise auf Vernachlässigung, Überforderung oder mögliche Schutzbedarfe?

==== 2. Bindungsverhalten und Beziehungen

- Wie schätzen Sie die Qualität der Bindung zwischen den Kindern und ihren Eltern ein?
- Kommt es zu Bindungsunsicherheiten oder auffälligen Verhaltensmustern?
- Wie erleben Sie die Interaktionen zwischen Eltern und Kindern im häuslichen Umfeld?

==== 3. Familiäre Dynamik und Erziehungssituation

- Wie wirken sich Strukturen, Routinen und Rollen auf die Kinder aus?
- Wo sehen Sie Belastungsfaktoren, die die Kinder besonders beeinflussen?
- Welche Erziehungsstrategien setzen die Eltern ein, und wie wirken diese?

==== 4. Elternkompetenzen und Umsetzung

- Wie gut können die Eltern die empfohlenen Massnahmen im Alltag umsetzen?
- Wo erkennen Sie Fortschritte, wo eher Stagnation oder Widerstand?
- Welche konkreten Unterstützungsbedarfe der Eltern sehen Sie aktuell?

==== 5. Ressourcen und Risiken

- Welche Schutzfaktoren (Bezugspersonen, Routinen, Stärken der Kinder) sind erkennbar?
- Welche Risiken für das Kindeswohl bestehen derzeit?
- Wie gut gelingt es den Eltern, die Bedürfnisse der Kinder angemessen wahrzunehmen?

==== 6. Zusammenarbeit und Transparenz

- Wie verläuft die Zusammenarbeit mit den Eltern — kooperativ, zuverlässig, reflexionsbereit?
- Gibt es Hindernisse, die die Zielerreichung beeinträchtigen?
- Wie regelmässig und tiefgehend können Sie die Familie begleiten?

==== 7. Fachliche Einschätzung und Zielerreichung

- Welche Ziele wurden zu Beginn definiert und wie ist der aktuelle Stand?
- Welche Veränderungen konnten Sie bei Kindern und Eltern feststellen?
- Wo sehen Sie dringendsten Handlungsbedarf?
- Wie beurteilen Sie die Wirksamkeit der bisherigen Unterstützung?

==== 8. Empfehlungen und weiterer Unterstützungsbedarf

- Welche weiteren Massnahmen halten Sie für sinnvoll (z.\u{a0}B. Psychotherapie, Frühförderung)?
- Welche Schritte sind nötig, um die Situation der Kinder nachhaltig zu stabilisieren?
- Welche Empfehlungen geben Sie für die interdisziplinäre Zusammenarbeit?
- Gibt es Bereiche, in denen der Kinderschutz verstärkt werden sollte?

=== Bedürfnisebenen — Grundsätze für die Beobachtung

Die Beobachtung des Kinderwohls wird strukturiert anhand der folgenden Bedürfnisebenen:

#table(
  columns: (auto, 1fr),
  [Ebene], [Beschreibung],
  [Physiologische Bedürfnisse], [Schlaf, Essen, Trinken, Wach- und Ruherhythmus, Körperpflege, Gesundheitsfürsorge],
  [Schutz und Sicherheit], [Aufsicht, wetterangemessene Kleidung, Schutz vor Krankheiten und Bedrohungen],
  [Soziale Bedingungen], [Verlässlichkeit, konstante Bezugspersonen, einfühlendes Verständnis, Zuwendung],
  [Wertschätzung], [Respekt vor der physischen, psychischen und sexuellen Unversehrtheit, Anerkennung der Eigenständigkeit],
  [Soziale/kognitive/emotionale Erfahrungen], [Altersentsprechende Anregungen, Werte und Normen, Sozialraum, Sprachförderung],
)

== C.6 Verhaltensregeln und professionelle Standards

Die folgenden Verhaltensgrundsätze sind verbindlich. Sie dienen einem professionellen, respektvollen und sicheren Arbeitsumfeld sowie der Wahrung der Vorbildfunktion gegenüber Kindern, Jugendlichen und deren Familien.

#aside-image("assets/zusammenarbeit_1.jpg", side: left, img-width: 40%)[
  Alle Mitarbeitenden sollen sich einander rücksichtsvoll verhalten und die persönlichen Sphären gegenseitig respektieren. Bei Mobbing, Bossing, Diskriminierung oder sexueller Belästigung gilt: die belästigende Person auf das unzulässige Verhalten hinweisen und die betroffene Person unterstützen. Vorgesetzte sind verantwortlich für eine diskriminierungs- und belästigungsfreie Arbeitsatmosphäre.
]

#v(6pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    *1. Körpersprache und Sitzhaltung* \
    Aufrechte und professionelle Körperhaltung; Sitzhaltungen, die als unangemessen wahrgenommen werden können (z.\u{a0}B. Schneidersitz), sind zu vermeiden.

    *2. Mobiltelefon* \
    Private Telefonate oder Nachrichten während Kontaktsituationen unterlassen. Diensthandys sind lautlos zu stellen und nur fachlich zu nutzen.

    *3. Diensttelefon — Sorgfalt und Meldepflicht* \
    Diensthandys sorgfältig behandeln. Schäden, Funktionsstörungen oder Verlust unverzüglich melden.

    *4. Essen und Trinken* \
    Essen während Gesprächen vermeiden, ausser es ist pädagogisch begründet. Getränke sind zulässig, sofern situativ angemessen.

    *5. Pünktlichkeit* \
    Termine pünktlich einhalten. Bei Verzögerungen rechtzeitig informieren.

    *6. Professioneller Abstand* \
    Berufliche Rolle jederzeit wahren. Übermässige private Offenbarungen vermeiden. Körperkontakt nur, wenn fachlich begründet.
  ],
  [
    *7. Sprache* \
    Respektvolle, klare und sachliche Ausdrucksweise. Abwertende, ironische oder sexualisierte Aussagen unterlassen. Dialekt ist zulässig, wenn verständlich.

    *8. Hygiene* \
    Gepflegtes Erscheinungsbild. Stark riechende Parfums vermeiden.

    *9. Rauch- und Suchtmittel* \
    Konsum von Alkohol, Cannabis oder anderen Substanzen vor oder während der Arbeitszeit ist strengstens verboten.

    *10. Eigentum der Klientinnen und Klienten* \
    Persönliche Gegenstände und Möbel respektvoll behandeln. Räume nur mit Einverständnis betreten.

    *11. Häusliches Umfeld* \
    Schuhe nur ausziehen, wenn üblich oder hygienisch notwendig. Teilnahme an privaten familiären Aktivitäten nur, wenn pädagogisch begründet und abgesprochen.
  ],
)

== C.7 Kleiderordnung

Mitarbeitende vertreten die Wegpiraten GmbH nach innen und aussen. Ein gepflegtes, professionelles und situationsangemessenes Erscheinungsbild ist zwingend.

#aside-image("assets/draussen_22.jpg", side: left, img-width: 45%)[
  *Angemessenheit (Casual Chic):* Kleidung muss gepflegt, sauber und einsatzgerecht sein. Neutraler, zurückhaltender Stil wird erwartet.

  #v(4pt)
  *Nicht zulässig:*
  - Bauchfreie oder stark freizügige Kleidung
  - Kleidung mit übermässig tiefem Ausschnitt
  - Jogginghosen, sofern nicht ausdrücklich durch den Einsatz gerechtfertigt
  - Kleidung mit diskriminierenden, beleidigenden, sexualisierten oder politisch motivierten Aufdrucken
  - Stark aufreizende oder unangemessen figurbetonte Kleidung
]

#v(4pt)
*Funktionalität:* Kleidung soll sichere, bewegungsfreundliche Arbeit ermöglichen. Schuhe müssen für Hausbesuche und Einsätze im Sozialraum geeignet sein.

*Vorbildfunktion:* Das Erscheinungsbild soll Respekt, Sicherheit und Professionalität vermitteln. Die vorgesetzte Stelle kann situative Anpassungen vorgeben, insbesondere bei repräsentativen Anlässen.

== C.8 Diensthandy

Das von den Wegpiraten zur Verfügung gestellte Diensthandy ist ausschliesslich in der Schweiz zu nutzen. Anrufe, SMS und Internet sind in der Schweiz kostenlos. *Das Diensthandy ist in keinem Fall im Ausland zu benutzen.* Nimmt jemand das Handy unerlaubt mit ins Ausland und es fallen Gebühren an, zahlt die betreffende Person den Betrag selbst. Bei Bedarf kann eine Rufweiterleitung an die Leitungen in Bern und Unterseen erfolgen (nach vorheriger Absprache).

#maybe-section-break-image("assets/default.jpg")

= Abschnitt D — Organisation und Infrastruktur

== D.1 Standorte

=== Büro Unterseen (Hauptstandort)

#aside-image("assets/buero_unterseen_front.jpeg", side: right, img-width: 38%)[
  Hauptstrasse 47, 3800 Unterseen

  Das Büro ist der zentrale Arbeits- und Anlaufpunkt für das Team Interlaken/Oberland.

  #v(4pt)
  *Gebäudekontakt:* \
  Livta AG, Hauptstrasse 43, 3800 Unterseen \
  Thomas Schärz (Geschäftsführer) \
  Tel: 033 828 33 32 · info\@livta.ch
]

=== Bootshaus Goldswil (Brienzersee)

#grid(
  columns: (38%, 1fr, auto),
  gutter: 12pt,
  image("assets/bootshaus_brienzersee.jpeg", width: 100%),
  [
    Direkt an der Aare, am östlichen Ende der öffentlichen Bootsplätze in Goldswil, unterhalb der ZB-Eisenbahnbrücke.

    #align(center)[
      #image("assets/qr_bootshaus_goldswil.png", width: 3cm)
      #text(size: 7pt, fill: wp-darkgray)[Lage auf \ Google Earth]
    ]
  ],
)

#v(4pt)
*Anfahrt mit dem Fahrrad:*
- Via TCS Campingplatz Interlaken der Aare entlang bis zum Bootshaus unterhalb der Eisenbahnbrücke
- Oder: Via Lanzenstrasse über die Eisenbahnbrücke, nach der Brücke links abbiegen in den Aareweg — das Bootshaus steht gleich links unten an der Aare

*Schlüssel:* Im Schlüsselkasten in Unterseen (Code: #sym.arrow.r Anhang Zugangsdaten und Codes). Nach Benutzung zurückbringen und im digitalen Kalender eintragen.

Das Bootshaus darf auch für private Zwecke verwendet werden — ebenfalls im Kalender eintragen. Eigene Familie, Verwandte und Freunde sind herzlich willkommen. Die Fachperson der Wegpiraten GmbH muss stets dabei sein. *Es gilt die Schwimmwestenpflicht.* Die Wegpiraten GmbH schliesst bei privater Nutzung des Bootshauses oder darin befindlicher Materialien jede Haftung aus.

=== Büro Bern

#aside-image("assets/buero_bern_maulbeerstrasse.jpg", side: right, img-width: 40%)[
  Maulbeerstrasse 10, 3011 Bern

  #v(4pt)
  *Gebäudekontakt:* \
  Projekt Interim Bern GmbH \
  David Derbin — david.derbin\@projekt-interim.ch · Tel: 078 974 40 67 \
  Elriz Traub (Bewirtschafterin) — elriz.traub\@projekt-interim.ch
]

*Transponder Bern:* Für den Zugang nach 20:00 Uhr hängt der Transponder im Schlüsselkasten in Unterseen.

*Sitzungszimmer buchen (Bern):* #sym.arrow.r Anhang Zugangsdaten und Codes

== D.2 Digitale Kalender

Buchungen von Büro, Bootshaus usw. bitte im Kalender eintragen. Urlaub ebenfalls selbstständig eintragen.

#grid(
  columns: (1fr, 1fr),
  gutter: 24pt,
  [
    *Kalender Unterseen*

    #raw("https://kalender.digital/26e8063b4fea678c5eea")

    #align(center)[
      #image("assets/qr_kalender_unterseen.png", width: 3.5cm)
    ]
  ],
  [
    *Kalender Bern*

    #raw("https://kalender.digital/d2fc8b7b8356c2e09b67")

    #align(center)[
      #image("assets/qr_kalender_bern.png", width: 3.5cm)
    ]
  ],
)

== D.3 IT und digitale Infrastruktur

Zugangsdaten für Computer, W-LAN und alle Tools sind im *Anhang Zugangsdaten und Codes* aufgeführt. Bitte diesen Anhang gesondert und vertraulich behandeln.

=== Dolmetscher-Service Comprendi

Über www.comprendi.ch können im Kanton Bern Übersetzerinnen und Übersetzer in jeder Sprache gebucht werden. Nach dem Termin die Unterschrift leisten — die Rechnung geht direkt an die Wegpiraten GmbH und wird vom KJA Bern erstattet. Der Dienst wird von der Caritas Bern angeboten.

Zugangsdaten: #sym.arrow.r Anhang Zugangsdaten und Codes

== D.4 Büroalltag

#aside-image("assets/aktuelles_1.jpg", side: left, img-width: 40%)[
  *Materialien und Anschaffungen:* Anschaffungswünsche mit der vorgesetzten Leitung besprechen. Im Büro Unterseen hängt eine Liste am Kühlschrank.

  #v(4pt)
  *Getränke:* Tee, Kaffee, Wasser und Softdrinks sind in Unterseen und Bern kostenlos. Fehlt etwas: eigenständig besorgen oder melden.
]

#v(4pt)
*Müllentsorgung:* Gebührenpflichtige Kehrichtsäcke; Entsorgung im Innenhof neben dem Parkhaus in Unterseen.

*Reinigung:* Alle zwei Wochen Nassreinigung. Raum so verlassen, wie er vorgefunden wurde (oder besser). Staubsauger nach Benutzung reinigen und an die Stromversorgung anschliessen.

*Erste Hilfe:* Alle Mitarbeitenden erhalten ein Erste-Hilfe-Set und eine Pflasterbox für unterwegs. Grosse Erste-Hilfe-Kästen in Unterseen und Bern.

*Arbeitssicherheit:* Es gibt eine Einweisung in die Betriebsstätte; dazu zählen auch Unfallschutz und Arbeitssicherheit. Ein Notfallplan zeigt, wo welche Erste-Hilfe-Kästen stehen.

*Kindersicherung:* Steckdosen sind gesichert. Schlüssel zum Öffnen: Schublade des Büroschreibtisches.

*Geburtstagsgeschenke:* Grusskarten und vorbereitete Kindergeschenke im Büro Unterseen (weisser Schrank).

*Dienstfahrräder:* Stehen im Keller in Unterseen. Immer dort abstellen. Schloss-Code: #sym.arrow.r Anhang Zugangsdaten und Codes

== D.5 Benutzung der Büroräume

Die Räumlichkeiten stehen den Mitarbeitenden nach Eintragung im digitalen Kalender (siehe auch Abschnitt D.2 Digitale Kalender) zur Verfügung. Bei privater Nutzung ist eine vorherige Absprache mit der Leitung notwendig.

== D.6 Postbehandlung und Briefe

Folgende Regelung gilt für das Öffnen von Briefen:

- Alle an die Firma Wegpiraten GmbH adressierten Briefe dürfen von befugten Mitarbeitenden geöffnet werden (Postbevollmächtigte, Geschäftsführerin, Buchhaltung, stellvertretende Leitung, Sekretariat).
- Post, die als «persönlich» oder «vertraulich» gekennzeichnet ist, darf nur von der empfangenden Person geöffnet werden. Unbefugtes Öffnen verletzt das Briefgeheimnis und ist strafbar.

*Zuordnung:*

+ Firmenname zuerst, dann Personenname #sym.arrow.r darf geöffnet werden
+ Personenname zuerst, dann Firmenname #sym.arrow.r darf geöffnet werden
+ Zusatz «Vertraulich» oder «Persönlich» #sym.arrow.r nur vom Empfangenden zu öffnen

Briefe an die Geschäftsführung werden ungeöffnet an Frau Viktoria Wloka weitergeleitet (physisches Dienstfach im Büro).


= Anhang I — Formularverzeichnis

Die folgenden Formulare werden als separate Dokumente verwaltet:

#table(
  columns: (auto, 1fr, 1fr),
  [Nummer], [Formular], [Zweck],
  [F-01], [Vorlage Teamsitzung], [Protokollvorlage für regelmässige Teamsitzungen],
  [F-02], [Vorlage Entwicklungsberichte], [Strukturierte Vorlage für sechsmonatliche Berichte],
  [F-03], [Vorlage Aufnahmegespräch], [Personalien, Ressourcen, Auftrag bei Falleröffnung],
  [F-04], [Quickinfos Klientendaten], [Kompaktübersicht der wichtigsten Klientendaten],
  [F-05], [Evaluation SPF], [Evaluationsbogen für die Sozialpädagogische Familienbegleitung],
)

Alle Formulare sind bei Frau Wloka erhältlich oder in der projektinternen Dokumentenverwaltung verfügbar.

= Anhang II — ICF-Klassifikation

Die Internationale Klassifikation der Funktionsfähigkeit, Beeinträchtigung und Gesundheit (ICF) ist ein bio-psycho-soziales Modell zur ganzheitlichen Erfassung der Lebenssituation.

== ICF-Kategorien Kinder und Jugendliche

- *Allgemeines Lernen* (Lernmotivation, Selbstorganisation, Kreativität, Aufmerksamkeit, Merkfähigkeit)
- *Umgang mit Anforderungen* (Regeln einhalten, Verhalten steuern, Selbstständigkeit, Teamfähigkeit)
- *Kommunikation* (Zuhören, Formulieren, gewaltfreie Kommunikation)
- *Spracherwerb und Begriffsbildung* (Aussprache, Wortschatz, Grammatik, Lesen, Schreiben)
- *Bewegung und Mobilität* (Grob- und Feinmotorik, Räumliche Wahrnehmung, Körperwahrnehmung)
- *Sozial-emotionales Lernen* (Empathie, Beziehungen gestalten, Selbstwert, Identität)

= Anhang Zugangsdaten und Codes

Dieser Anhang enthält sensible Zugangsdaten und ist vertraulich zu behandeln.

== Dolmetscher-Service Comprendi

- Website: `www.comprendi.ch`
- Benutzername: `wegGmbH_23`
- Passwort: `wegpirgmbh2`

== Computer Apple MacBook Air

- Anmeldung: `Wegpiraten GmbH` (schwarzes Flaggenbild)
- Computer-Passwort: `Wegpiratengmbh`
- E-Mail-Adresse: `wegpiraten.gmbh@wegpiraten.ch`
- E-Mail-Passwort: `Bürointerlaken4321!`
- Apple ID: `Buerointerlaken4321!`
- Apple-ID-Passwort: `Piratenpower4321!`

== Büro Bern

- Sitzungszimmer-Buchungstool: `https://www.supersaas.de/dashboard/login`
- Benutzername: `MeetingMaulbeerstrasse`
- Passwort: `Maulbeerstrasse10`
- W-LAN Netzwerkname: `Maulbeerstrasse 10`
- W-LAN Passwort: `projektinterim`

== Büro Unterseen

- W-LAN Netzwerkname (SSID): `EB8B1003A3`
- W-LAN Passwort: `Wpira@2025`

#align(center)[
  #image("assets/qr_wlan_unterseen.png", width: 3.5cm)
]

== Dienstfahrräder

- Schloss-Code: `22222`
