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


pkg install -y \
  git=2.25.1

pkg install -y \
  curl=7.68.0 \
  gnupg=2.2.19

mkdir -p "$PREFIX/etc/apt/sources.list.d/"
echo "deb https://its-pointless.github.io/files/24 termux extras" \
> "$PREFIX/etc/apt/sources.list.d/pointless.list"
curl "https://its-pointless.github.io/pointless.gpg" \
| apt-key add

pkg update -y

pkg install -y \
  clang=9.0.1-1 \
  gcc-9=9.2.0-1 \

# compiler configuration
setupgcc-9
setupclang-gfort-9


pkg install -y \
  make=4.3-1 \
  python=3.8.2 \
  scipy=1.4.1 \
  r-base=3.6.2 \
  r-cran-tidyverse=1.3.0


R -e "install.packages('optparse', repos='http://cran.us.r-project.org')"
R -e "install.packages('statmod', repos='http://cran.us.r-project.org')"
R -e "install.packages('matrixStats', repos='http://cran.us.r-project.org')"
R -e "install.packages('maxLik', repos='http://cran.us.r-project.org')"
R -e "install.packages('numDeriv', repos='http://cran.us.r-project.org')"

pip install \
pyyaml==5.3 \
jinja2==2.11.1 \
cython==0.29.15 \
pandas==1.0.1 \

pip install git+https://github.com/jrgriffiniii/joblib.git@issues-825-jrgriffiniii-no-sem-support
pip install scikit-learn==0.22.1 \

apt clean
