set title "Change in Confirmed Cases in India"
set ylabel "No. of confirmed cases"
set xlabel "Date"
set xdata time
set timefmt "%m/%d/%Y"
set key left top box
set xtics rotate
set grid
plot "./data/cases.dat" u 1:2 w lp lw 2 lc "black" title 'Confirmed Cases'
