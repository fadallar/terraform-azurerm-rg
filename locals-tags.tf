locals {
  default_tags = var.default_tags_enabled ? {
    Environment   = "${var.environment}"
    CostCenter = "${var.costcenter}"
    SPOC = "${var.spoc}"
    Owner = "${var.owner}"
    Change = "${var.change}"
    Stack = "${var.stack}"
  } : {}
}
