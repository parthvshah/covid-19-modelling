# set title "Confirmed Cases in India"
set ylabel "No. of new confirmed cases"
set xlabel "Date (mm/dd)"
set xdata time
set timefmt "%m/%d/%Y"
set style fill solid border -1
set key left top box
set xtics rotate
set grid
set style fill pattern 5
plot "./data/increase.dat" u 1:2 w boxes lw 2 lc "black" title 'Confirmed Cases'

