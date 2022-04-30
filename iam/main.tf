module "aws_iam_role_app_runner" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "4.23.0"

  create_role = true
  role_name   = "AppRunnerECRAccessRole"
  
  trusted_role_services   = ["build.apprunner.amazonaws.com"] 
  custom_role_policy_arns = ["arn:aws:iam::aws:policy/service-role/AWSAppRunnerServicePolicyForECRAccess"]
}

