sed -i 's|terraform init -input=false|echo "Skipping terraform - infra already running"|g' Jenkinsfile
sed -i 's|terraform plan -out=tfplan -input=false|echo "skip"|g' Jenkinsfile
sed -i 's|terraform apply -input=false tfplan|echo "skip"|g' Jenkinsfile

grep -A5 "Terraform Provision" Jenkinsfile


