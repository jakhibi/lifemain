module "eks" {
    source  = "terraform-aws-modules/eks/aws"
    cluster_name = var.cluster_name
    cluster_version = "1.27"

    vpc_id                         = module.vpc.vpc_id
    subnet_ids                     = module.vpc.private_subnets
    cluster_endpoint_public_access = true

    eks_managed_node_groups = {
        first = {
        name = "first-ng"

        instance_types = ["t3.small"]

        min_size     = 1
        max_size     = 1
        desired_size = 1
        }
    }
}