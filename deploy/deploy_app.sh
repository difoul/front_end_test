#!/bin/bash
echo "Start deploying ..."
host=52.30.96.161
ssh -o 'StrictHostKeyChecking no' $host
chmod 400 ../deploy/foudil_key.pem 
scp -i ../deploy/foudil_key.pem target/package.zip ec2-user@$host:/tmp