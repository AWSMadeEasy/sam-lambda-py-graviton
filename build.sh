#!/bin/bash
sam build
sam deploy --stack-name $PY_LAMBDA_FN_STACK --resolve-s3

