PDF = willkommen_an_bord_v2.pdf
SRC = willkommen_an_bord_v2.md

$(PDF): $(SRC)
	pandoc $(SRC) -o $(PDF) --pdf-engine=xelatex --wrap=none

clean:
	rm -f $(PDF)

.PHONY: clean
