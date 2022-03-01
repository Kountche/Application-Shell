#! /bin/sh

top -o %MEM | head -n 12 | tail -n 5 > redirection.tmp

gnuplot << EOF
set terminal postscript eps color enhanced
set output "courbe.eps"
plot 'redirection.tmp' u 11:2 w l
EOF
evince courbe.eps
