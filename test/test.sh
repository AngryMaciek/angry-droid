#!/usr/bin/env bash

###############################################################################
#
#   [TITLE, DESCRIPTION]
#
#   AUTHOR: Maciej_Bak
#   AFFILIATION: Swiss_Institute_of_Bioinformatics
#   CONTACT: wsciekly.maciek@gmail.com
#   CREATED: 05-03-2020
#   LICENSE: GPL_v3.0
#
###############################################################################

echo "######### BASH TEST STARTED #########"
date

echo "######### C CODE COMPILATION ########"
gcc test/test.c -o test/ctest.exe

echo "######### C CODE EXECUTION ##########"
chmod +x test/ctest.exe
test/ctest.exe

echo "######### C++ CODE COMPILATION ######"
gcc test/test.cpp -o test/cpptest.exe

echo "######### C++ CODE EXECUTION ########"
chmod +x test/cpptest.exe
test/cpptest.exe

echo "######### PYTHON SCRIPT TEST ########"
python test/test.py

echo "######### R SCRIPT TEST #############"
Rscript test/test.R

echo "######### FINISHED SUCCESSFULLY #####"
