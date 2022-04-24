# aws_apprunner_terraform

## Initial set up
```bash
## Create S3 bucket to store tfstate file
$ docker-compose run --rm \
    aws s3api create-bucket \
    --bucket terraform-tfstate \
    --create-bucket-configuration LocationConstraint=${AWS_DEFAULT_REGION}

$ docker-compose run --rm \
    aws s3api put-bucket-versioning \
    --bucket terraform-tfstate \
    --versioning-configuration Status=Enabled

$ docker-compose build
```

## Create each resource
```bash

```