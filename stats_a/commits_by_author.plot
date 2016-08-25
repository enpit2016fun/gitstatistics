set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "Satoshi Morohara" w lines, 'commits_by_author.dat' using 1:3 title "Kojiro Inoue" w lines, 'commits_by_author.dat' using 1:4 title "KeisukeHamatani" w lines, 'commits_by_author.dat' using 1:5 title "Satoshi_moro" w lines, 'commits_by_author.dat' using 1:6 title "Shingo Ito" w lines, 'commits_by_author.dat' using 1:7 title "KanazawaShihori" w lines, 'commits_by_author.dat' using 1:8 title "Shingo" w lines, 'commits_by_author.dat' using 1:9 title "s-morohara" w lines, 'commits_by_author.dat' using 1:10 title "kanazawashihori" w lines, 'commits_by_author.dat' using 1:11 title "KojiroInoue" w lines
