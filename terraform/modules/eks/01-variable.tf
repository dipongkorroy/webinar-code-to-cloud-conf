variable "aws_region" {
  description = "your aws region"
  type        = string
}

variable "cluster_name" {
  description = "name of the cluster, will be the name of the VPC,should be unique"
  type        = string
}

variable "created_by" {
  description = "created by quickops metadata"
  type        = string
}

variable "vpc_cidr_block" {
  description = "cidr range of the VPC"
  type        = string
}

variable "subnet_public-1_cidr" {
  description = "cidr range of the public subnet 1"
  type        = string
}

variable "subnet_public-2_cidr" {
  description = "cidr range of the public subnet 2"
  type        = string
}

variable "subnet_private-1_cidr" {
  description = "cidr range of the private subnet 1"
  type        = string
}

variable "subnet_private-2_cidr" {
  description = "cidr range of the private subnet 2"
  type        = string
}

variable "subnet_id_private_1" {
  description = "subnet_id_pprivate_1 to be used in cluster"
  # type = string
}
variable "subnet_id_private_2" {
  description = "subnet_id_pprivate_1 to be used in cluster"
  # type = string
}
variable "EKS_Kubernetes_Version" {
  description = "EKS_Kubernetes_Version"
  type        = string
}
variable "private_nodegroup_1" {
  description = "EKS_Kubernetes_Version"
  type = object({
    capacity_type  = string
    instance_types = list(string)
    max_size       = number
    min_size       = number
    desired_size   = number
  })
}


