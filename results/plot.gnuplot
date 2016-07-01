

set terminal postscript eps color enhanced
set output "stream.eps"

set size 0.76
#set size ratio 0.8

set xlabel "Processes/Threads"
set ylabel "Bandwidth (GB/sec)"

set grid
set key bottom right Left reverse
set logscale x
set xrange [1:400]
set logscale y

set title "STREAM Benchmark Results on INTEL Hardware"

plot \
 "haswell/stream64M.dat"     using 1:($2/1000) title "E5-2670 v3 (Haswell)     "                lw 2 lt 2 lc rgb "#000033" with linespoints, \
 "ivybridge/stream64M.dat"   using 1:($2/1000) title "E5-2650 v2 (Ivy Bridge)  "                lw 2 lt 2 lc rgb "#000088" with linespoints, \
 "sandybridge/stream64M.dat" using 1:($2/1000) title "E5-2620    (Sandy Bridge)"                lw 2 lt 2 lc rgb "#0000FF" with linespoints, \
 "knc/stream64M.dat"         using 1:($2/1000) title "Xeon Phi 7120 (Knights Corner)"           lw 2 lt 4 lc rgb "#00BBFF" with linespoints, \
 "knl/stream64M-ddr4.dat"    using 1:($2/1000) title "Xeon Phi 7250 (Knights Landing), DDR4"    lw 4 lt 1 pt 5 ps 1.5 lc rgb "#FF9900" with linespoints, \
 "knl/stream64M-mcdram.dat"  using 1:($2/1000) title "Xeon Phi 7250 (Knights Landing), MCDRAM"  lw 4 lt 1 pt 7 ps 1.5 lc rgb "#FF6600" with linespoints

