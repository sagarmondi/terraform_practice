locals {
  # Build a standardized name for the instance
  instance_name = "${var.name}-${var.project}-${var.environment}"

  # Common tags applied to all resources
  common_tags = {
    Name        = local.instance_name
    Project     = var.project
    Environment = var.environment
  }
}
