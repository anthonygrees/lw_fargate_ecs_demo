variable "aws_profile" {
}

variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "ap-southeast-2"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "0000000000000.dkr.ecr.ap-southeast-2.amazonaws.com/ecr:nginx"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "fargate_task_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "512"
}

variable "fargate_task_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "1024"
}

variable "fargate_container_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "256"
}

variable "fargate_container_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "512"
}

variable "lw_token" {
}