set terminal png font "Times New Roman,24" size 1000, 1000
set output 'Xi_dos_new2_J0.dat_T0.0001.png'
set title "T = 0.0001, Xi_dos_new2_J0.dat" textcolor lt 3
set ylabel "Xi/N" font "Times New Roman,28"
set xlabel "H" font "Times New Roman,28"
plot 'Xi_dos_new2_J0.dat' using 1:4 with lines lw 2 notitle, 'Xi_dos_new2_J0.dat' using 1:4 pt 7 lc 7 ps 2 notitle
