## @knitr load_packages
# Any package that is required by the script below is given here:
inst_pkgs = load_pkgs =  c("ggplot2","devtools","zoo")
inst_pkgs = inst_pkgs[!(inst_pkgs %in% installed.packages()[,"Package"])]
if(length(inst_pkgs)) install.packages(inst_pkgs)

# Dynamically load packages
pkgs_loaded = lapply(load_pkgs, require, character.only=T)

