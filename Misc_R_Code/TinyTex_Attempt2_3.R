
install.packages('tinytex')
tinytex::install_tinytex()


update.packages(ask = FALSE, checkBuilt = TRUE)
tinytex::tlmgr_update()