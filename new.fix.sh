#!/bin/bash
git switch -c fix/$1
#touch new.fix.txt
# git add .
# git commit -m "$1"
git push -u origin fix/$1
