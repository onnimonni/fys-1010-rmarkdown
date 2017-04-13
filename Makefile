# Choose all as default option
.PHONY: default
default: all;

# Create a pdf from all files
all:
	@for file in $(shell find . -depth 1 -name '*.Rmd') ; do \
        INPUT_FILE=$$file make pdf ; \
    done
	@#Rscript Graphs.R
	@#Rscript -e "rmarkdown::render('${ARGS}.Rmd')"

# Creates a pdf file from INPUT_FILE env variable
pdf:
	# Run the R script for $(INPUT_FILE) to populate data...
	@test -f $(basename $(INPUT_FILE)).R && echo Processing $(basename $(INPUT_FILE)).R ... && Rscript $(basename $(INPUT_FILE)).R \
	|| echo "INFO: Skipping R script for $(INPUT_FILE)..."

	# Render the pdf from the file
	Rscript -e "rmarkdown::render('$(INPUT_FILE)')"