#!/usr/bin/env bash

###############################################################################
#
#   UNIX shell master test script
#
#   AUTHOR: Maciej_Bak
#   AFFILIATION: Swiss_Institute_of_Bioinformatics
#   CONTACT: wsciekly.maciek@gmail.com
#   CREATED: 05-03-2020
#   LICENSE: MIT
#
###############################################################################

echo "######### BASH TEST STARTED #########"
date
curl --version | head -n 1
make --version | head -n 1
vim --version | head -n 1
cookiecutter --version
echo "Snakemake:" $(snakemake --version)

echo "######### C CODE COMPILATION ########"
gcc-9 angry-droid/test/test.c -o angry-droid/test/ctest.exe

echo "######### C CODE EXECUTION ##########"
chmod +x angry-droid/test/ctest.exe
angry-droid/test/ctest.exe

echo "######### C++ CODE COMPILATION ######"
g++ angry-droid/test/test.cpp -o angry-droid/test/cpptest.exe

echo "######### C++ CODE EXECUTION ########"
chmod +x angry-droid/test/cpptest.exe
angry-droid/test/cpptest.exe

echo "######### PYTHON SCRIPT TEST ########"
python angry-droid/test/test.py

echo "######### R SCRIPT TEST #############"
Rscript angry-droid/test/test.R
