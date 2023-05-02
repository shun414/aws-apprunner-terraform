# aws-apprunner-terraform

## Set up
```bash
$ cp .env.default .env
$ docker-compose build
```

## Create S3 bucket to store tfstate file
```
$ docker-compose run --rm \
    aws s3api create-bucket \
    --bucket terraform-tfstate \
    --create-bucket-configuration LocationConstraint=${AWS_DEFAULT_REGION}

$ docker-compose run --rm \
    aws s3api put-bucket-versioning \
    --bucket terraform-tfstate \
    --versioning-configuration Status=Enabled
```

## Create each resources
```bash
$ docker-compose run --rm -w /app terraform init
$ docker-compose run --rm -w /app terraform plan
$ docker-compose run --rm -w /app terraform apply
``````
