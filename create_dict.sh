#!/bin/sh

AIFANG_MSS="/home/kakiezhang/wwwroot/"
V2_ROOT=$AIFANG_MSS"v2/"
MSS_ROOT=$AIFANG_MSS"mss-dict/"

cd $V2_ROOT && ls && pwd
/usr/bin/php app-aifang-jobs/bin/launcher.php dictionary/CreateDictionary.php
cd $AIFANG_MSS
grep -v 'name":""' af_loupan_all.txt | sort | uniq > xinfang_loupan_all.txt
cd $MSS_ROOT && git pull --rebase
mv "$AIFANG_MSS"xinfang_loupan_all.txt $MSS_ROOT
git status
#git add . && git commit -m '更新新房词典' && git push origin master
