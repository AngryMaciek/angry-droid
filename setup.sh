#!/usr/bin/env bash

###############################################################################
#
#   Install all the software: tools & packages
#
#   AUTHOR: Maciej_Bak
#   AFFILIATION: Swiss_Institute_of_Bioinformatics
#   CONTACT: wsciekly.maciek@gmail.com
#   CREATED: 05-03-2020
#   LICENSE: GPL_v3.0
#
###############################################################################

#sudo apt-get -y install fortune-mod
# yes | sudo apt-get install fortune-mod

pkg install git


pkg install curl gnupg
mkdir -p "$PREFIX/etc/apt/sources.list.d/"
echo "deb https://its-pointless.github.io/files/ termux extras" \
> "$PREFIX/etc/apt/sources.list.d/pointless.list"
curl "https://its-pointless.github.io/pointless.gpg" | apt-key add

pkg install r-base \
            make \
            clang \
            gcc-7 \
            libgfortran3 \
            openssl \
            libcurl \
            libicu \
            libxml2

# r-base 3.6.1-4
# make 4.3-1
# clang 9.0.1-1
# gcc-7 7.4.0-2
# libgfortran3 6.5.0-2
# openssl ???
# libcurl ???
# libicu 65.1
# libxml 2.9.10

# compiler configuration
setupclang-gfort-7

Rscript -e "install.packages('maxLik', repos='http://cran.us.r-project.org')"
# R
# split tidyverse to separae packages?

# apt install python, R, scipy

# pip install pandas sklearn, keras, statsmodels
