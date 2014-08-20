export JAVA_HOME="$(/usr/libexec/java_home)"

# export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
# export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
# export AWS_CREDENTIAL_FILE="$HOME/.aws-credentials-master"
#
# export EC2_HOME="/opt/boxen/homebrew/Library/LinkedKegs/ec2-api-tools/jars"
# export EC2_AMITOOL_HOME="/opt/boxen/homebrew/Library/LinkedKegs/ec2-ami-tools/jars"
#
# export AWS_AUTO_SCALING_HOME="/opt/boxen/homebrew/Library/LinkedKegs/auto-scaling/jars"
# export AWS_CLOUDFORMATION_HOME="/opt/boxen/homebrew/Library/LinkedKegs/aws-cfn-tools/jars"
# export AWS_ELASTICACHE_HOME="/opt/boxen/homebrew/Cellar/aws-elasticache/1.7.000/libexec"
# export AWS_IAM_HOME="/opt/boxen/homebrew/opt/aws-iam-tools/jars"
# export AWS_SNS_HOME="/opt/boxen/homebrew/Library/LinkedKegs/aws-sns-cli/jars"
# export AWS_CLOUDWATCH_HOME="/opt/boxen/homebrew/Library/LinkedKegs/cloud-watch/jars"
# export SERVICE_HOME="$AWS_CLOUDWATCH_HOME"
# export AWS_ELB_HOME="/opt/boxen/homebrew/Library/LinkedKegs/elb-tools/jars"
# export AWS_RDS_HOME="/opt/boxen/homebrew/Cellar/rds-command-line-tools/1.12.002/libexec"

# For awscli-1.0.0
export AWS_CONFIG_FILE="$HOME/.awsrc"

alias ssh-ec2='ssh -i ~/.ec2/eliperkins-omr-imac.pem'

source /usr/local/share/zsh/site-functions/_aws
