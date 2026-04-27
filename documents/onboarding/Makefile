PDF = willkommen_an_bord.pdf
SRC = willkommen_an_bord.typ

$(PDF): $(SRC)
	typst compile $(SRC) $(PDF)

watch:
	typst watch $(SRC) $(PDF)

clean:
	rm -f $(PDF)

.PHONY: clean watch
