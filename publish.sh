#!/bin/bash
BRANCH=`git branch | grep \* | awk '{print $2;}'`
echo "Publishing $BRANCH"
mkdir $BRANCH
cp index.html $BRANCH
cp -r css $BRANCH
cp -r js $BRANCH
cp -r lib $BRANCH
tar -czf $BRANCH.tar.gz $BRANCH
scp $BRANCH.tar.gz kellerbw@physwww.mcmaster.ca:~/
ssh kellerbw@physwww.mcmaster.ca "tar xvzf $BRANCH.tar.gz -C public_html/presentations/"
ssh kellerbw@physwww.mcmaster.ca "rm $BRANCH.tar.gz"
rm $BRANCH.tar.gz
rm -rf $BRANCH
