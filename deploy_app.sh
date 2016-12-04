host=$1
ssh -o 'StrictHostKeyChecking no' $host
scp -i deploy/foudil_key.pem target/package.zip ec2-user@$host:/tmp