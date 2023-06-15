# set terminal postscript eps
# set output "onef_highest_weights.eps"
plot "onef_highest_weights.dat" using 1:3 w l
pause -1
#    EOF
