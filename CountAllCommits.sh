#!/bin/bash
#
fname=numofcommit`date +%s`.png
teamid=(a b c d e f)
teamname=("日本消防隊" "TEAM raccoon" "遅刻ブラザーズ" "三代目" "チームコミットメント" "オズボーン")

git checkout gh-pages

{ \
  echo "set terminal png size 640,800 font \"VL-Gothic-Regular.ttf,16\""; \
  echo "set size 1.0,1.0"; \
  echo "set yrange [0:180]"; \
  echo "set xtics rotate by -60"; \
  echo "set boxwidth 0.5 relative"; \
  echo "set style fill solid border lc rgb \"black\""; 
  echo "set title \"enPiT FUN mini-PBL 2016\nチーム別総コミット数\n(`LANG=C date`)\""; \
  echo "plot '-' using 0:2:xtic(1) with boxes lw 2 lc rgb \"light-pink\" notitle"; \
  for i in 0 1 2 3 4 5; \
  do \
  ( \
    cd minipbl_${teamid[$i]} && \
    echo -n \"${teamname[$i]}\"" "; \
    git rev-list --all | wc -l \
  ); \
  done \
} | GDFONTPATH=/usr/share/fonts/vlgothic gnuplot -p > $fname

git checkout master
