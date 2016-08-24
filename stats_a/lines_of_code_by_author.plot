set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'lines_of_code_by_author.png'
set key left top
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Lines"
set xtics rotate
set bmargin 6
plot 'lines_of_code_by_author.dat' using 1:2 title "Satoshi Morohara" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Kojiro Inoue" w lines, 'lines_of_code_by_author.dat' using 1:4 title "KeisukeHamatani" w lines, 'lines_of_code_by_author.dat' using 1:5 title "KanazawaShihori" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Satoshi_moro" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Shingo Ito" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Shingo" w lines, 'lines_of_code_by_author.dat' using 1:9 title "s-morohara" w lines, 'lines_of_code_by_author.dat' using 1:10 title "kanazawashihori" w lines, 'lines_of_code_by_author.dat' using 1:11 title "KojiroInoue" w lines
