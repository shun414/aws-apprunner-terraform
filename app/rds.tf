resource "aws_rds_cluster" "this" {
  cluster_identifier      = "app-runner-test"
  engine                  = "aurora"
  engine_version          = "8.0"
  availability_zones      = ["ap-northeast-1a", "ap-northeast-1b"]
  database_name           = "apprunner-test"
  master_username         = "root"
  master_password         = var.rds_master_password["value"]
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
}

resource "aws_rds_cluster_instance" "aurora_instances" {
  count                = 2
  identifier           = "app-runner-test-${count.index}"
  cluster_identifier   = aws_rds_cluster.aurora_cluster.id
  instance_class       = "db.t3.small"
  engine               = "aurora"
  engine_version       = "8.0"
  publicly_accessible  = true
}

