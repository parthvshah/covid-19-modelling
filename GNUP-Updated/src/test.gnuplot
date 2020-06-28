set terminal jpeg size 1300,600
set multiplot layout 1,3 title "Peak of Epidemic for p=0.1"
set grid
set lmargin 4
set rmargin 2
set xtics rotate
#
set lmargin at screen 0.05; set rmargin at screen 0.36
set title '{/Symbol b}=0.250'
set ylabel 'Infected individuals (10^{7})' offset 2
set xlabel 'Day t'
unset arrow
set arrow from 238, graph 0 to 238, graph 1 dt 2 nohead
plot 'low1.dat' u 1:($2/10000000) w l lw 2 lc "red" title ''
#
set lmargin at screen 0.36; set rmargin at screen 0.67
set title '{/Symbol b}=0.258'
set xlabel 'Day t'
set ytics format ''
unset ylabel
unset arrow
set arrow from 229, graph 0 to 229, graph 1 dt 2 nohead
plot 'mid1.dat' u 1:($2/10000000) w l lw 2 lc "red" title ''
#
set lmargin at screen 0.67; set rmargin at screen 0.99
set title '{/Symbol b}=0.266'
set xlabel 'Day t'
set ytics format ''
unset arrow
set arrow from 221, graph 0 to 221, graph 1 dt 2 nohead
plot 'high1.dat' u 1:($2/10000000) w l lw 2 lc "red" title ''
#
unset multiplot
