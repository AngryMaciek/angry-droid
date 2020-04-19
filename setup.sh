#!/usr/bin/env bash

###############################################################################
#
#   Install all the software: tools & packages
#
#   AUTHOR: Maciej_Bak
#   AFFILIATION: Swiss_Institute_of_Bioinformatics
#   CONTACT: wsciekly.maciek@gmail.com
#   CREATED: 05-03-2020
#   LICENSE: MIT
#
###############################################################################

# software versions for pkg are constantly updated, cannot be specified 

pkg install -y \
  curl \
  gnupg

# Follow the instruction @ its-pointless repo:
# https://github.com/its-pointless/gcc_termux
mkdir -p "$PREFIX/etc/apt/sources.list.d/"
echo "deb https://its-pointless.github.io/files/24 termux extras" \
> "$PREFIX/etc/apt/sources.list.d/pointless.list"
curl "https://its-pointless.github.io/pointless.gpg" \
| apt-key add

pkg update -y

# install clang and gcc compilers
pkg install -y \
  clang \
  gcc-9 \

# compilers configuration
setupgcc-9
setupclang-gfort-9

# these packages HAVE TO be installed with apt:
pkg install -y \
  make \
  python \
  scipy \
  r-base \
  r-cran-tidyverse \
  vim

# install R packages inside R
R -e "install.packages('optparse', repos='http://cran.us.r-project.org')"
R -e "install.packages('statmod', repos='http://cran.us.r-project.org')"
R -e "install.packages('matrixStats', repos='http://cran.us.r-project.org')"
R -e "install.packages('maxLik', repos='http://cran.us.r-project.org')"
R -e "install.packages('numDeriv', repos='http://cran.us.r-project.org')"

# install Python packages with pip
pip install \
pyyaml==5.3 \
jinja2==2.11.1 \
cython==0.29.15 \
pandas==1.0.1 \
cookiecutter==1.7.0
pip3 install snakemake==5.10.0

# scikit-learn requuires joblib package
# Termux on Android does not have a native implementation of semaphores
# A dedicated version of joblib is required:
# https://github.com/termux/termux-packages/issues/1618
pip install git+https://github.com/jrgriffiniii/joblib.git@issues-825-jrgriffiniii-no-sem-support
pip install scikit-learn==0.22.1 \

apt clean
