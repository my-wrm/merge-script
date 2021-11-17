#!/bin/sh
ACCESS_TOKEN=$1
BASE_REF=$2
HEAD_REF=$3
echo ACCESS_TOKEN = $ACCESS_TOKEN
echo BASE_REF = $BASE_REF
echo HEAD_REF = $HEAD_REF
git config --global user.email "my@wrmsoftware.com"
git config --global user.name "Merge script"
git clone https://mywrm:$ACCESS_TOKEN@github.com/my-wrm/dummy-project.git
cd dummy-project
git fetch origin
git checkout $BASE_REF
git merge --no-ff origin/$HEAD_REF
git remote -v
git push origin