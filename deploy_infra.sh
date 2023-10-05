# Terraform init in the "infra/" directory
HOME_PATH=$(pwd)
cd "$HOME_PATH/infra/"
terraform init 

# Auto-approving infrastructure changes
terraform apply -auto-approve

# Back to root directory
cd "$HOME_PATH"