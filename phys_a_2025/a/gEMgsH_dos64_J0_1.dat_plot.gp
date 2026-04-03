set terminal png font "Times New Roman,24" size 1000, 1000
set output 'gEMgsH_dos64_J0_1.dat.png'
set title "gEMgsH_dos64_J0_1.dat" textcolor lt 3
set ylabel "Mgs" font "Times New Roman,28"
set xlabel "H" font "Times New Roman,28"
plot 'gEMgsH_dos64_J0_1.dat' using 1:4 with lines lw 2 notitle, 'gEMgsH_dos64_J0_1.dat' using 1:4 pt 7 lc 7 ps 2 notitle
