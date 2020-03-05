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
            libgfortran \
            openssl-dev \
            libcurl-dev \
            libicu-dev \
            libxml2-dev

# compiler configuration
#setupclang-gfort-8

# Rscript -e 'install.packages("maxLik")'
# R
# split tidyverse to separae packages?

# apt install python, R, scipy

# pip install pandas sklearn, keras, statsmodels
