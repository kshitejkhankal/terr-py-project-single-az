#networking
variable "vpc_cidr_block" {
  # type= "string"
  description = "mini-project"
  default     = "70.0.0.0/16"
}

variable "vpc_prod_subnet" {
  type        = list(string)
  description = "prod-subnet"
  default     = ["70.0.1.0/24", "70.0.2.0/24"]

}
variable "az" {

  description = "prod-az"
  default     = ["ap-south-1a"]



}
# variable "policy-ecs" {
#   type = set(string)
#   description = "policy"
#   default = [ "arn:aws:iam::aws:policy/AmazonSSMFullAccess","arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM","arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore","arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"]
  
# }