#!/usr/bin/gnuplot -persist
# set terminal postscript eps color solid
# set output "ten_filters_high_weights.eps"
plot "ten_filters_weights.dat" using 1:12 w l, "ten_filters_weights.dat" using 1:13 w l, "ten_filters_weights.dat" using 1:14 w l, "ten_filters_weights.dat" using 1:15 w l, "ten_filters_weights.dat" using 1:16 w l, "ten_filters_weights.dat" using 1:17 w l, "ten_filters_weights.dat" using 1:18 w l, "ten_filters_weights.dat" using 1:19 w l, "ten_filters_weights.dat" using 1:20 w l, "ten_filters_weights.dat" using 1:21 w l
pause -1
