#!/bin/bash
####################################
# 
# Push CloudFormation templates folder to S3
#
# 1.) Select profile
# 2.) Select tag
# 3.) Select bucket
#
# Push to S3
#
####################################

# Present a list of options
function selectOption {
    PS3='Please enter your choice: '
    options=($1)
    select opt in "${options[@]}"
    do
        echo $opt
        break;    
    done
}  

# Request text to be entered
function enterText {
    read -p "Please type the $1 followed by [ENTER]:" text
    echo $text
}

# Execute a AWS CLI command with selected profile
function awsCli {
    echo `aws --profile $AWS_CLI_PROFILE $1`
}

# 1.) Select profile 
#profiles=`tail -n+2 ~/.aws/config | grep "\[" | sed 's/.*\[profile \([^]]*\)\].*/\1/g'`
#AWS_CLI_PROFILE=$(selectOption "$profiles")
AWS_CLI_PROFILE="een"

# 2.) Enter tag name
#TAG_NAME=$(enterText "tag name")
# TODO lookup tag from current checkout (jenkins). GitHook?
TAG_NAME="develop"

# 2.) Enter bucket name
#BUCKET_NAME=$(enterText "bucket name")
BUCKET_NAME="cloudformations-een-shared"

echo $(awsCli "s3 cp --recursive `pwd` s3://$BUCKET_NAME/een-v1/$TAG_NAME/")