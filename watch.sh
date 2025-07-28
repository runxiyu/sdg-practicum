#!/bin/sh

while true
do
	Rscript -e "rmarkdown::render('test.Rmd')"
	Rscript -e "rmarkdown::render('test.Rmd', output_format = 'pdf_document')"
	Rscript -e "rmarkdown::render('test.Rmd', output_format = 'word_document')"
	inotifywait -e close_write test.Rmd
done

