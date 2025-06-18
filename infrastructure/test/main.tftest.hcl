run "basic_plan" {
  command = plan

  assert {
    condition     = length(terraform.resource_changes) > 0
    error_message = "Plan should contain resource changes"
  }

  assert {
    condition     = terraform.resource_changes[0].type == "azurerm_resource_group"
    error_message = "Expected first resource to be an Azure Resource Group"
  }

  assert {
    condition     = terraform.resource_changes[*].type contains "azurerm_kubernetes_cluster"
    error_message = "Expected an AKS cluster to be in the plan"
  }
}
