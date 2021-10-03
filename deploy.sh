#! /bin/bash

echo "***** Building Hugo site *****"
Hugo -D
echo "***** Deploying public folder *****"
aws s3 cp public s3://www.darraghmc.com --recursive
echo "***** Deployment Complete *****"
echo "***** Opening Site *****"
open https://www.darraghmc.com