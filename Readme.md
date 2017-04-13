# FYS-1010 esimerkkipohja R Markdownilla

Ärsyttääkö, että TTY ei tue raporttien kirjoittamista markdownilla?

Ei hätää koska R Markdown pystyy lähes mihin tahansa.

## Mitä tarvitsee olla asennettuna?
Jotta .Rmd tiedostot voidaan muuttaa pdf:ksi koneellasi täytyy olla asennetuna:

[RStudio](https://www.rstudio.com/products/rstudio/download/).

Jos käytät Mäkkiä, voit asentaa sen kätevästi tällä unix-loitsulla:
```bash
$ brew cask install rstudio
```

## Kuinka luon pdf:n tekemästäni raportista?

Projektin mukana tulevan `Makefile` muuttaa kaikki `.Rmd` tiedostot pdf:ksi kun ajat:
```bash
$ make
```

## Lisenssi
MIT

