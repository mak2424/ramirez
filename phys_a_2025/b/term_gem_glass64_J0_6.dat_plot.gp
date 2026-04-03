set terminal png font "Times New Roman,24" size 1000, 1000
set output 'term_gem_glass64_J0_6.dat_E.png'
set title "term_gem_glass64_J0_6.dat" textcolor lt 3
set ylabel "E/N" font "Times New Roman,28"
set xlabel "T" font "Times New Roman,28"
plot 'term_gem_glass64_J0_6.dat' using 1:2 with lines lw 2 notitle
set terminal png font "Times New Roman,24" size 1000, 1000
set output 'term_gem_glass64_J0_6.dat_M.png'
set title "term_gem_glass64_J0_6.dat" textcolor lt 3
set ylabel "M/N" font "Times New Roman,28"
set xlabel "T" font "Times New Roman,28"
plot 'term_gem_glass64_J0_6.dat' using 1:3 with lines lw 2 notitle
set terminal png font "Times New Roman,24" size 1000, 1000
set output 'term_gem_glass64_J0_6.dat_C.png'
set title "term_gem_glass64_J0_6.dat" textcolor lt 3
set ylabel "C/N" font "Times New Roman,28"
set xlabel "T" font "Times New Roman,28"
plot 'term_gem_glass64_J0_6.dat' using 1:4 with lines lw 2 notitle

set terminal png font "Times New Roman,24" size 1000, 1000
set output 'term_gem_glass64_J0_6.dat_Xi.png'
set title "term_gem_glass64_J0_6.dat" textcolor lt 3
set ylabel "Xi/N" font "Times New Roman,28"
set xlabel "T" font "Times New Roman,28"
plot [][:0.05] 'term_gem_glass64_J0_6.dat' using 1:5 with lines lw 2 notitle
