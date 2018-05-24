#!/usr/bin/env Rscript

bookdown::render_book("index.Rmd", "bookdown::gitbook", new_session = TRUE)
bookdown::render_book("index.Rmd", "bookdown::pdf_book", new_session = TRUE)
