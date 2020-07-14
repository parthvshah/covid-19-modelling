set terminal jpeg size 1300,600
# gnuplot < p0.01.gnuplot > p0.01.jpeg
set multiplot layout 1,3 # title "Peak of Epidemic for p=0.01"
set grid
set lmargin 7
set rmargin 2
set xtics rotate
#
set lmargin at screen 0.05; set rmargin at screen 0.36
set title '{/Symbol b}=0.269'
set ylabel 'Infected individuals (10^{6})' offset 2
set xlabel 'Day t'
set arrow from 191, graph 0 to 191, graph 1 nohead dt "-"
plot './data/low2.dat' u 1:($2/1000000) w l lw 2 lc "red" title ''
#
set lmargin at screen 0.36; set rmargin at screen 0.67
set title '{/Symbol b}=0.270'
set xlabel 'Day t'
unset ylabel
unset arrow
set ytics format ''
set arrow from 192, graph 0 to 192, graph 1 nohead dt "-" 
plot './data/mid2.dat' u 1:($2/1000000) w l lw 2 lc "red" title ''
#
set lmargin at screen 0.67; set rmargin at screen 0.99
set title '{/Symbol b}=0.271'
set xlabel 'Day t'
unset arrow
set ytics format ''
set arrow from 190, graph 0 to 190, graph 1 nohead dt "-"
plot './data/high2.dat' u 1:($2/1000000) w l lw 2 lc "red" title ''
#
unset multiplot
