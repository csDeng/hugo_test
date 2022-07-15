#!/bin/bash
TIME=`date "+%Y-%m-%d %H:%M:%S"`
git add .
git commit -m "date: $TIME"
git push
sleep 3
