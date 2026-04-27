#set document(title: "Willkommen an Bord", author: "Wegpiraten GmbH")
#set page(margin: 2.5cm, numbering: "1")
#set text(font: "Liberation Sans", size: 11pt, lang: "de")
#set heading(numbering: none)
#set par(justify: true)

#let commentbox(body) = block(
  width: 100%,
  fill: rgb("FFF8DC"),
  stroke: 1.5pt + rgb("C8A000"),
  inset: 8pt,
  radius: 4pt,
  body,
)

// --- Titelseite ---
#align(center)[
  #image("assets/bab_ankommen.jpg", width: 100%)
]
#pagebreak()

// --- Inhaltsverzeichnis ---
#outline(title: "Inhaltsverzeichnis", depth: 2)
#pagebreak()

// --- Inhalt ---
= Ziel und Zweck dieses Readers

Dieses Reglement fasst alle bestehenden Beschlüsse, Richtlinien und Vereinbarungen zusammen, die das Anstellungsverhältnis innerhalb der Wegpiraten GmbH betreffen. Es definiert Rechte und Pflichten, schafft klare Rahmenbedingungen und beschreibt sowohl die Erwartungen an die zu erbringenden Leistungen als auch die gelebte Unternehmenskultur.

Die Bestimmungen gelten für sämtliche Mitarbeitenden der Wegpiraten GmbH. Als rechtliche Hauptgrundlagen dienen das Schweizerische Obligationenrecht (OR), das Arbeitsgesetz (ArG) sowie die entsprechenden Verordnungen (ArGV). Ergänzende Grundlagen bilden der Arbeitsvertrag, der Stellenbeschrieb und interne Weisungen.

Dieses Dokument enthält sensible Informationen, darunter interne Zugangsdaten und vertrauliche betriebliche Inhalte. Bitte entsprechend sorgfältig damit umgehen.

= Abschnitt A — Willkommen & Orientierung

== A.1 Wer wir sind und was wir tun

#grid(
  columns: (1fr, 0.7fr),
  gutter: 16pt,
  [
    Wir sind die Wegpiraten GmbH — ein multiprofessionelles Team von Sozialpädagoginnen und Sozialpädagogen mit Standorten in Unterseen/Interlaken und Bern. Unsere Arbeit ist systemisch, erlebnispädagogisch und konsequent auf die Menschen ausgerichtet, mit denen wir arbeiten.

    Wir begleiten Familien in herausfordernden Lebenssituationen, stärken Erziehungskompetenzen und sichern den Kinderschutz. Dabei sind wir auf Augenhöhe, neugierig und verbindlich.
  ],
  image("assets/bab_ankommen.jpg", width: 100%),
)

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

#commentbox[
  *\[Kommentar\]* Hier ist eine unterschiedliche Tonalität. Von einerseits sehr professionell und sachlich, andererseits sehr persönlich und emotional.
]

#grid(
  columns: (1fr, 0.6fr),
  gutter: 12pt,
  [
    - Hilfe zur Selbsthilfe — So wenig wie möglich, so viel wie nötig
    - Sich selber überflüssig machen.
    - Eltern machen es so gut sie können. Wir sensibilisieren für eine Lösung.
    - Zukunftsfokus und konsequente Umsetzung der Abmachungen.
    - Ich bin verbindlich und verlässlich — und erwarte das auch vom Gegenüber.
    - Ich arbeite *ressourcenorientiert und systemisch*: alle Player werden involviert.
  ],
  align(horizon, image("assets/bab_gemeinsamer_moment.jpg", width: 100%)),
)
