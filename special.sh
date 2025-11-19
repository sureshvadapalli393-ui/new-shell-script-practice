!#/bin/bash
echo "All variables passed to the script: $@"
echo "all variables passed to the script : $*"
echo "script name : $0"
echo "current working directory: $PWD"
COURSE=("devops" "linux" "ansible" "python")
echo ${COURSE[0]}