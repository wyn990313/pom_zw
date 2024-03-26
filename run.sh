#!/usr/bin/bash
echo '      parameter(im=650, jm=490, kb=21)' >  grid
echo '      iproblem=  1                  ' >  params
echo '      days=      0.025                ' >> params
echo '      prtd1=     0.0125             ' >> params
echo '      dte=       6.                 ' >> params


module load netCDF-All/iimpi-2023b ecCodes/2.24.2-iimpi-2023b

ifort pom2k.f 
./a.out
