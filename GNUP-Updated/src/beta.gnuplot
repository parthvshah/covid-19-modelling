# set title "Estimate of New Confirmed Cases and New Confirmed Cases"
set ylabel "No. of new confirmed cases"
set xlabel "Date"
set xdata time
set timefmt "%m/%d/%Y"
set key left top box
set xtics rotate
set grid
plot "./data/increase.dat" u 1:2 w points lw 2 lc "black" pt 6 title '', \
"./data/cmu0.dat" u 1:2 w line lw 2 lc "black" dt 8 title ' {/Symbol b}=0.269', \
"./data/cmu1.dat" u 1:2 w line lw 2 lc "red" title ' {/Symbol b}=0.270', \
"./data/cmu2.dat" u 1:2 w line lw 2 lc "blue" dt 2 title ' {/Symbol b}=0.271'

