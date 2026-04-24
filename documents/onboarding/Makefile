PDF = willkommen_an_bord.pdf
SRC = willkommen_an_bord.md

$(PDF): $(SRC)
	pandoc $(SRC) -o $(PDF) --pdf-engine=xelatex --wrap=none

clean:
	rm -f $(PDF)

.PHONY: clean
