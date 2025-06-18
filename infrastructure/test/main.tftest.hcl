# Check the resource group is created with the expected name
test "resource_group_exists" {
  condition = azurerm_resource_group.main.name == "${local.project_name}-prod"
  error_message = "Resource group name is incorrect."
}

# Check that the AKS cluster is using the expected VM size
test "aks_vm_size" {
  condition = azurerm_kubernetes_cluster.main.default_node_pool[0].vm_size == "Standard_D2_v2"
  error_message = "AKS VM size is not Standard_D2_v2"
}

# Ensure location matches the input variable
test "location_matches_input" {
  condition = azurerm_kubernetes_cluster.main.location == var.location
  error_message = "AKS cluster location does not match input variable"
}
