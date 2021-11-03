#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MK.pem ec2-user@18.136.199.59 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name MyCluster03; ~/update_snapshot.sh data 2 MyCluster03"
