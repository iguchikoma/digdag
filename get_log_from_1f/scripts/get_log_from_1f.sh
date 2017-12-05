#!/bin/bash
# TIPS: .cfg and .log file paths are relative path from digdag workflow file's directory

# set config parameter
. ./scripts/get_log_from_1f.cfg
#. ./get_log_from_1f.cfg

# create log file
date > logs/results.log
#date > results.log

echo ${PASSWORD}
echo ${USERNAME}

# get log 
sleep 1
sshpass -p ${PASSWORD} ssh -p 2024 -o StrictHostKeyChecking=no ${USERNAME}@$1 show log devel.log >> logs/results.log
#sshpass -p ${PASSWORD} ssh -p 2024 -o StrictHostKeyChecking=no ${USERNAME}@$1 show log devel.log >> results.log

