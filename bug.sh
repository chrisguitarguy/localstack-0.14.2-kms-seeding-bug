#!/usr/bin/env sh

export AWS_ACCESS_KEY_ID=ignored
export AWS_SECRET_ACCESS_KEY=ignored
export AWS_DEFAULT_REGION=us-east-1
export AWS_PAGER=""

echo "Localstack 0.14.1"
echo "-----------------"
aws --endpoint http://localhost:4566 --output table kms list-keys

echo ""
echo ""

echo "Localstack 0.14.2 (Broken)"
echo "--------------------------"

aws --endpoint http://localhost:4567 --output table kms list-keys

echo ""
echo ""

echo "Localstack 0.14.2 (Fixed)"
echo "-------------------------"

aws --endpoint http://localhost:4568 --output table kms list-keys
