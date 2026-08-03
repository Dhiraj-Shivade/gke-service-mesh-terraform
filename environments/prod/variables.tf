variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
}

variable "region" {
  description = "Deployment Region"
  type        = string
}

variable "network_name" {
  description = "VPC Network Name"
  type        = string
}

variable "subnet_name" {
  description = "Private Subnet Name"
  type        = string
}

variable "subnet_cidr" {
  description = "Primary CIDR for Subnet"
  type        = string
}

variable "pods_range_name" {
  description = "Secondary Range Name for Pods"
  type        = string
}

variable "pods_cidr" {
  description = "Pods Secondary CIDR"
  type        = string
}

variable "services_range_name" {
  description = "Secondary Range Name for Services"
  type        = string
}

variable "services_cidr" {
  description = "Services Secondary CIDR"
  type        = string
}

variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
}

variable "release_channel" {
  description = "GKE Release Channel"
  type        = string
}

variable "deletion_protection" {
  description = "Enable deletion protection"
  type        = bool
}