#!/bin/sh

#sync beta99
#MOBILE_DIR="../app-aifang-api/controller/aifang/api/mobile/"
#cd $MOBILE_DIR && ls 
#cp -r basic2b basic99b
#sed -i "s/Basic2b/Basic99b/g" `grep Basic2b -rl basic99b`

#sync current beta
BRANCH_END=`git reflog | head -1 | awk '{print $1}'`
echo $BRANCH_END
BRANCH_START=`git log --graph | grep -2 '楼盘大全页面' | tail -1 | awk '{print $3}'`
echo $BRANCH_START

MOBILE_DIR="../"
cd $MOBILE_DIR && ls
git reset --soft $BRANCH_START 
#git status | grep 'app-aifang-api'
#API_CHANGES=`git status | grep 'app-aifang-api' | awk '{if($2~"modified:"){print $3}else{print $4}}'`
#git reset --soft $BRANCH_END
