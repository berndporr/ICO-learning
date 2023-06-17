#set terminal postscript eps
#set output "onef_low_weights.eps"
plot "onefilter_weights.dat" using 1:3 w l
#    EOF
pause -1
