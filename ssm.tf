resource "aws_ssm_parameter" "secret" {
  for_each    = var.secrets
  name        = each.key
  description = each.value.description
  type        = "SecureString"
  value       = each.value.value
  tags        = each.value.tags
}
