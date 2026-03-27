set terminal png font "Times New Roman,24" size 1000, 1000
set output '_multiplot_dos_new2_J0.dat.png'
set multiplot
set size 1, 0.5
set origin 0, 0.5 
set title "gEMgsH_dos_new2_J0.dat" textcolor lt 3
set ylabel "Mgs" font "Times New Roman,28"
set xlabel "H" font "Times New Roman,28"
plot [-0.5:5.5][] 'gEMgsH_dos_new2_J0.dat' using 1:4 with lines lw 2 notitle, 'gEMgsH_dos_new2_J0.dat' using 1:4 pt 7 lc 7 ps 2 notitle
set size 1, 0.5
set origin 0, 0 
set title "HGS_dos_new2_J0.dat" textcolor lt 3
set ylabel "entropy" font "Times New Roman,28"
set xlabel "H" font "Times New Roman,28"
set boxwidth 0 
plot [-0.5:5.5][] 'HGS_dos_new2_J0.dat' using 1:2 with boxes lw 2 notitle, 'HGS_dos_new2_J0.dat' using 1:2 pt 7 lc 7 ps 2 notitle
unset multiplot
