resource "aws_iam_role" "ExecutionRole" {
  name = "reesy-ecsExecutionRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ecs-tasks.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    Name      = "reesy-ecsExecutionRole"
    Terraform = "true"
  }
}

resource "aws_iam_role_policy_attachment" "ExecutionRole_to_ecsTaskExecutionRole" {
  role       = aws_iam_role.ExecutionRole.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}