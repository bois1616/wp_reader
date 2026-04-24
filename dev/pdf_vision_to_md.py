#!/usr/bin/env python3
"""
PDF -> Markdown via Claude Vision.
Rendert jede Seite als Bild und laesst Claude den Inhalt als Markdown ausgeben.
"""

import anthropic
import base64
import re
import sys
import time
from pathlib import Path

import fitz  # PyMuPDF


SYSTEM_PROMPT = """Du bist ein Dokumenten-Konverter. Du erhältst ein Bild einer PDF-Seite
und gibst den vollständigen Inhalt als sauberes Markdown zurück.

Regeln:
- Überschriften als # ## ### #### je nach Hierarchie
- Bullet-Listen als - item
- Nummerierte Listen als 1. item
- Fett als **text**, Kursiv als *text*
- Tabellen als Markdown-Tabellen (| col | col |)
- Kopf- und Fusszeilen (Firmenname, Adresse, Seitenzahl, URL) WEGLASSEN
- Seitenzahlen WEGLASSEN
- Bildunterschriften und dekorative Elemente WEGLASSEN
- Inhaltlich vollständig und wortgetreu — kein Kürzen, kein Paraphrasieren
- Nur Markdown ausgeben, kein einleitendes "Hier ist..." oder ähnliches
- Wenn die Seite leer oder nur dekorativ ist, gib eine leere Zeile aus"""

USER_PROMPT = "Konvertiere diese PDF-Seite vollständig und wortgetreu in Markdown."


def page_to_base64(page, dpi=150):
    """Rendere eine PDF-Seite als PNG und gib Base64-String zurück."""
    mat = fitz.Matrix(dpi / 72, dpi / 72)
    pix = page.get_pixmap(matrix=mat, colorspace=fitz.csRGB)
    return base64.standard_b64encode(pix.tobytes("png")).decode("utf-8")


def convert_page(client, page_b64, page_num, retries=3):
    """Schicke eine Seite an Claude und erhalte Markdown."""
    for attempt in range(retries):
        try:
            response = client.messages.create(
                model="claude-sonnet-4-6",
                max_tokens=4096,
                system=SYSTEM_PROMPT,
                messages=[
                    {
                        "role": "user",
                        "content": [
                            {
                                "type": "image",
                                "source": {
                                    "type": "base64",
                                    "media_type": "image/png",
                                    "data": page_b64,
                                },
                            },
                            {"type": "text", "text": USER_PROMPT},
                        ],
                    }
                ],
            )
            return response.content[0].text.strip()
        except Exception as e:
            if attempt < retries - 1:
                print(f"  Seite {page_num}: Fehler ({e}), retry {attempt + 1}...")
                time.sleep(2 ** attempt)
            else:
                print(f"  Seite {page_num}: Fehler nach {retries} Versuchen: {e}")
                return f"<!-- Seite {page_num}: Extraktion fehlgeschlagen -->"


def clean_markdown(text):
    """Normalisiere und bereinige das zusammengefuehrte Markdown."""
    # Mehrfache Leerzeilen
    text = re.sub(r"\n{3,}", "\n\n", text)
    # Trailing whitespace
    text = re.sub(r"[ \t]+$", "", text, flags=re.MULTILINE)
    return text.strip()


def pdf_to_markdown_vision(pdf_path: Path, dpi: int = 150) -> str:
    client = anthropic.Anthropic()
    doc = fitz.open(str(pdf_path))
    total = len(doc)
    parts = []

    print(f"  {total} Seiten, DPI={dpi}")

    for i, page in enumerate(doc, 1):
        print(f"  Seite {i}/{total}...", end=" ", flush=True)
        b64 = page_to_base64(page, dpi=dpi)
        md = convert_page(client, b64, i)
        if md and md.strip() and not md.startswith("<!--"):
            parts.append(md)
            print(f"ok ({len(md)} Zeichen)")
        else:
            print("leer/Fehler")
        # Kurze Pause um Rate-Limits zu vermeiden
        if i < total:
            time.sleep(0.5)

    doc.close()
    combined = "\n\n---\n\n".join(parts)
    return clean_markdown(combined)


def main():
    base = Path("/home/stephan/projects/wp_reader/documents/external")
    files = [
        (
            base / "rumpf_willkommen_an_bord_ueberarbeitet.pdf",
            base / "rumpf_willkommen_an_bord_ueberarbeitet.md",
        ),
        (
            base / "Korrekturlesen Willkommen an Bord bei der Wegpiraten .pdf",
            base / "korrekturlesen_willkommen_an_bord.md",
        ),
    ]

    targets = sys.argv[1:] if len(sys.argv) > 1 else ["rumpf", "korrekturlesen"]

    for pdf_path, md_path in files:
        if not any(t in pdf_path.stem.lower() for t in targets):
            continue
        if not pdf_path.exists():
            print(f"FEHLER: {pdf_path} nicht gefunden", file=sys.stderr)
            continue
        print(f"Konvertiere {pdf_path.name} via Claude Vision ...")
        md = pdf_to_markdown_vision(pdf_path)
        md_path.write_text(md, encoding="utf-8")
        lines = md.count("\n")
        print(f"Fertig: {md_path.name} ({lines} Zeilen)\n")


if __name__ == "__main__":
    main()
