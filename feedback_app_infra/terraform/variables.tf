variable "region" {
    description = "The AWS region to deploy resources in"
    type        = string
    default     = "us-east-1"
}
variable "vpc_cidr" {
  description = "value of the VPC CIDR block"
    type        = string
    default     = "10.0.0.0/16"
}
variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "ahmed-feedback-app-eks"
  
}
variable "cluster_version" {
  description = "The version of the EKS cluster"
  type        = string
  default     = "1.30"
}
variable "subnet_ids" {
  description = "The IDs of the subnets to use for the EKS cluster"
  type        = list(string)
  default     = []
  
}
variable "node_groups" {
  description = "The node groups to create for the EKS cluster"
  type        = map(object({
    scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number
    })
  }))
  default = {
    eks_node_group = {
      amiType = "ami-084568db4383264d4"
      instance_type = "t2.medium"
      capacity_type = "ON_DEMAND"
      scaling_config = {
        desired_size = 2
        max_size     = 3
        min_size     = 2
      }
    }
  }
}
variable "availability_zone" {
  description = "The availability zone to use for the subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnet_cidrs" {
    description = "The CIDR block for the private subnets"
    type        = list(string)
    default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
variable "public_subnet_cidrs" {
    description = "The CIDR block for the public subnets"
    type        = list(string)
    default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

