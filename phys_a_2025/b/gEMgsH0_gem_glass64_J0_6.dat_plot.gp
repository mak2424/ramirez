set terminal png font "Times New Roman,24" size 1000, 1000
set output 'gEMgsH0_gem_glass64_J0_6.dat.png'
set title "H=0, gEMgsH0_gem_glass64_J0_6.dat" textcolor lt 3
set ylabel "g" font "Times New Roman,28"
set xlabel "M/N" font "Times New Roman,28"
plot 'gEMgsH0_gem_glass64_J0_6.dat' using 4:3 with lines lw 2 notitle, 'gEMgsH0_gem_glass64_J0_6.dat' using 4:3 pt 7 lc 7 ps 2 notitle
