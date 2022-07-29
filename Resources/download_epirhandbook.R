setwd('C:/epirhandbook')
getwd()

# just use the base install.packages
install.packages("pacman")

# install the latest version of the Epi R Handbook package
pacman::p_install_gh("appliedepi/epirhandbook")

# load the package for use
pacman::p_load(epirhandbook)

# download the offline handbook to your computer
download_book()