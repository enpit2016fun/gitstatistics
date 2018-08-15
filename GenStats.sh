#!/bin/bash
#
git checkout gh-pages

for team in a b c d e f
do
  repo=minipbl_$team
  if [ ! -d ${repo} ]; then
    echo ${repo} not found.
    exit 1
  fi
  ./gitstats ${repo} stats_$team
done

commitdate=`LANG=C date`
sed -i -e "/Last Update/c\\<div align=\"right\"\>Last Update:\ $commitdate\</div\>" index.html &&
sed -i -e "/Last Update/c\\<div align=\"right\"\>Last Update:\ $commitdate\</div\>" activity.html &&

git add index.html activity.html stats_*
git commit -m "Update $commitdate"
git push origin gh-pages

git checkout master
