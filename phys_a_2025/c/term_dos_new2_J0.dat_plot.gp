set terminal png font "Times New Roman,24" size 1000, 1000
set output 'term_dos_new2_J0.dat_E.png'
set title "term_dos_new2_J0.dat" textcolor lt 3
set ylabel "E/N" font "Times New Roman,28"
set xlabel "T" font "Times New Roman,28"
plot 'term_dos_new2_J0.dat' using 1:2 with lines lw 2 notitle
set terminal png font "Times New Roman,24" size 1000, 1000
set output 'term_dos_new2_J0.dat_M.png'
set title "term_dos_new2_J0.dat" textcolor lt 3
set ylabel "M/N" font "Times New Roman,28"
set xlabel "T" font "Times New Roman,28"
plot 'term_dos_new2_J0.dat' using 1:3 with lines lw 2 notitle
set terminal png font "Times New Roman,24" size 1000, 1000
set output 'term_dos_new2_J0.dat_C.png'
set title "term_dos_new2_J0.dat" textcolor lt 3
set ylabel "C/N" font "Times New Roman,28"
set xlabel "T" font "Times New Roman,28"
plot 'term_dos_new2_J0.dat' using 1:4 with lines lw 2 notitle
set terminal png font "Times New Roman,24" size 1000, 1000
set output 'term_dos_new2_J0.dat_Xi.png'
set title "term_dos_new2_J0.dat" textcolor lt 3
set ylabel "Xi/N" font "Times New Roman,28"
set xlabel "T" font "Times New Roman,28"
plot 'term_dos_new2_J0.dat' using 1:5 with lines lw 2 notitle
