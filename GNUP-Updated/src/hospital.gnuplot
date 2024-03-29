# set title "Infected Individuals and Healthcare Capacity in India"
set ylabel "Individuals"
set xlabel "Date (mm/dd/yy)"
set key right top box opaque
set xdata time
set timefmt "%m/%d/%y"
set xtics rotate
set grid
set arrow from graph 0, first 120104 to graph 1, first 120104 nohead lw 2 lc "red" dt 2
set arrow from graph 0, first 32362 to graph 1, first 32362 nohead lw 2 lc "blue" dt 2
plot ["5/4/20":"1/29/21"] "./data/no_int1_date.dat" u 1:($3*0.0639) w line lw 2 lc "red" title 'Individuals requiring hospitalization', \
    ["5/4/20":"1/29/21"] "./data/no_int1_date.dat" u 1:($3*0.03) w line lw 2 lc "blue" title 'Individuals requiring intensive care', \
    1/0 lw 2 lc "red" dt 2 title "Hospital capacity", \
    1/0 lw 2 lc "blue" dt 2 title "Intensive care capacity" 
