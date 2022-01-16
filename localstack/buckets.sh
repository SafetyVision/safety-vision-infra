#!/bin/bash
set -x
awslocal s3api create-bucket --bucket safety-vision-static-files
set +x
