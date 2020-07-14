# set title "Infection Rate Reduced to 95%"
set ylabel "Infected Individuals"
set xlabel "Day t"
set key right top box opaque
set xtics rotate
set grid
# set arrow from 202, graph 0 to 202, graph 1 nohead
# set arrow from 214, graph 0 to 214, graph 1 nohead
# set arrow from 270, graph 0 to 270, graph 1 nohead
plot [100:470] "./data/no_int1.dat" u 1:2 w line lw 2 lc "red" title 'No intervention', \
[100:470] "./data/one_month1.dat" u 1:2 w line dt 2 lw 2 lc "blue" title '1 month', \
[100:470] "./data/six_month1.dat" u 1:2 w line dt 8 lw 2 lc "black" title '6 months'

