# Destroying the infrastructure created
HOME_PATH=$(pwd)
cd "$HOME_PATH/infra/"
terraform destroy -auto-approve 

# Back to root directory
cd "$HOME_PATH"

