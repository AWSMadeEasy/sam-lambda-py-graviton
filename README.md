# Gitpod Python AWS Lambda Function

Deploy an AWS lambda function using SAM.

## Environmental variables

Users will need to configure environmental variables to use this repo.  You will need to define your AWS credentials and region, and provide a name for the AWS CloudFormation [stack](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacks.html).

`export AWS_ACCESS_KEY_ID=AKAIIYOURKEY`
`export AWS_SECRET_ACCESS_KEY=qKIFEWFSECRETKEY`
`export AWS_DEFAULT_REGION=us-east-1`
`export PY_LAMBDA_FN_STACK='helloworldstack'`

## Cleanup resources

Delete your created stack from your container by running `sam delete --stack-name $PY_LAMBDA_FN_STACK`
