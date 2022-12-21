reset

set terminal png size 400,300 enhanced font "Helvetica,12"
set output 'residuals-plot.png'

set grid
set logscale y
set title "Residuals for the last time-step"
set ylabel 'Residuals'
set xlabel 'Iterations'

set key font ",10"
set format y "%2.0t{/Symbol \264}10^{%L}"
#set format y "%.0s*10^{%T}"

set yrange [1e-9:]
set xrange [0:20000]

cases = "TL TLTD UL"

plot for [case in cases] "./residuals-".case.".dat" with lines lw 2 title case

set output
