#!/bin/bash

data=`/usr/bin/sudo -u perforce /p4/common/bin/p4d_1_bin -V | grep Rev`
echo "p4_version: "$data