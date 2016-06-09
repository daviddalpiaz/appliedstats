## ----setup, echo=FALSE, message=FALSE, warning=FALSE--------------------------
require(knitr)
read_chunk('r_book.R')
options(scipen = 8, width = 80)
knit_hooks$set(purl = hook_purl)
opts_template$set(nopurl = list(purl = FALSE))
opts_template$set(dopurl = list(purl = TRUE))

## ----load_packages, message=FALSE,echo=FALSE, warning=FALSE-------------------
# Any package that is required by the script below is given here:
inst_pkgs = load_pkgs =  c("ggplot2","devtools","zoo")
inst_pkgs = inst_pkgs[!(inst_pkgs %in% installed.packages()[,"Package"])]
if(length(inst_pkgs)) install.packages(inst_pkgs)

# Dynamically load packages
pkgs_loaded = lapply(load_pkgs, require, character.only = TRUE)

## ----misc_func, echo=FALSE----------------------------------------------------

## ---- eval = FALSE------------------------------------------------------------
#  a = 3
#  b = 4
#  sqrt(a ^ 2 + b ^ 2)

## ---- echo = FALSE, eval = TRUE-----------------------------------------------
a = 3
b = 4
sqrt(a ^ 2 + b ^ 2)

