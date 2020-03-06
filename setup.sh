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


yes | pkg install \
  git=2.25.1

yes | pkg install \
  curl=7.68.0 \
  gnupg=2.2.19

mkdir -p "$PREFIX/etc/apt/sources.list.d/"
echo "deb https://its-pointless.github.io/files/ termux extras" \
> "$PREFIX/etc/apt/sources.list.d/pointless.list"
curl "https://its-pointless.github.io/pointless.gpg" \
| apt-key add

apt-get update

yes | pkg install \
  r-base=3.6.1-4 \
  make=4.3-1 \
  clang=9.0.1-1 \
  gcc-7=7.4.0-2 \
  libgfortran3=6.5.0-2 \
  openssl \
  libcurl \
  libicu=65.1 \
  libxml2=2.9.10 \
  python=3.8.2 \

# scipy 1.3.0-1

#export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib

# compiler configuration
# setupclang-gfort-7

pip install \
numpy \
#statsmodels==0.11.1 \
#scikit-learn==0.22.1 \
#Keras==2.3.1
#pandas==1.0.1 \

#R -e "install.packages('maxLik', repos='http://cran.us.r-project.org')"

# Rscript

apt clean
