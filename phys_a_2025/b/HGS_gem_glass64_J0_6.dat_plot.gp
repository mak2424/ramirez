set terminal png font "Times New Roman,24" size 1000, 1000
set output 'HGS_gem_glass64_J0_6.dat_g.png'
set title "HGS_gem_glass64_J0_6.dat" textcolor lt 3
set ylabel "entropy" font "Times New Roman,28"
set xlabel "H" font "Times New Roman,28"
set boxwidth 0 
plot [-0.5:5.5][] 'HGS_gem_glass64_J0_6.dat' using 1:2 with boxes lw 2 notitle, 'HGS_gem_glass64_J0_6.dat' using 1:2 pt 7 lc 7 ps 2 notitle

set terminal png font "Times New Roman,24" size 1000, 1000
set output 'HGS_gem_glass64_J0_6.dat_Egs.png'
set title "HGS_gem_glass64_J0_6.dat" textcolor lt 3
set ylabel "Egs" font "Times New Roman,28"
set xlabel "H" font "Times New Roman,28"
plot 'HGS_gem_glass64_J0_6.dat' using 1:4 with lines lw 2 notitle, 'HGS_gem_glass64_J0_6.dat' using 1:4 pt 7 lc 7 ps 2 notitle
