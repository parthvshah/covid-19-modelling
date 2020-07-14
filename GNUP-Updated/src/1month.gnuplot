# set title "1 Month Intervention"
set ylabel "Infected Individuals"
set xlabel "Day t"
set key right top box opaque
set xtics rotate
set grid
# set arrow from 202, graph 0 to 202, graph 1 nohead
# set arrow from 226, graph 0 to 226, graph 1 nohead
# set arrow from 343, graph 0 to 343, graph 1 nohead
plot [100:470] "./data/one_month1.dat" u 1:2 w line lw 2 lc "blue" title "{/Symbol b}'=0.95{/Symbol b}", \
    [100:470] "./data/one_month3.dat" u 1:2 w line lw 2 dashtype 2 lc "blue" title "{/Symbol b}'=0.75{/Symbol b}", \
    [100:470] "./data/one_month2.dat" u 1:2 w line lw 2 dashtype 8 lc "blue" title "{/Symbol b}'=0.50{/Symbol b}"
    

