resource "azurerm_sql_server" "example" {
  name                         = var.sqlservername
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = var.sqluser
  administrator_login_password = var.sqlpassword

  tags = {
      environment = "Bastion & Terraform Demo"
      learning = "AzureStudy"
  }
}

resource "azurerm_sql_firewall_rule" "example" {
  name                = "FirewallRule1"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_sql_server.example.name
  start_ip_address    = var.clientipstart
  end_ip_address      = var.clientipend
}

resource "azurerm_sql_firewall_rule" "AllowAllWindowsAzureIps" {
  name                = "AllowAllWindowsAzureIps"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_sql_server.example.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

resource "azurerm_storage_account" "example" {
  name                     = var.storageaccountname
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"

  tags = {
      environment = "Bastion & Terraform Demo"
      learning = "AzureStudy"
  }
}

resource "azurerm_storage_container" "example" {
  name                  = var.storagecontainer
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "azurerm_storage_container" "storage" {
  name                  = var.csvstoragecontainer
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "azurerm_sql_database" "example" {
  name                             = "販売管理"
  resource_group_name              = azurerm_resource_group.example.name
  location                         = azurerm_resource_group.example.location
  server_name                      = azurerm_sql_server.example.name
  edition                          = "DataWarehouse"
  requested_service_objective_name = "DW100c"
  collation                        = "Japanese_CS_AS_KS_WS"
  tags = {
      environment = "Bastion & Terraform Demo"
      learning = "AzureStudy"
  }
  provisioner "local-exec" {
    working_dir = "./"
    command     = "az sql dw pause --ids $ID"
    environment = {
      ID = azurerm_sql_database.example.id
    }
  }
}

resource "azurerm_databricks_workspace" "example" {
  name                = var.databricksname
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "trial"
  provisioner "local-exec" {
    working_dir = "./"
    command      = <<-EOT
     az keyvault create --default-action Deny --bypass AzureServices --location $LOCATION --name $KEY_VAULT_NAME --resource-group $RESOURCE_GROUP_NAME --network-acls-ips $IPADDRESS --retention-days $RETENTION
     az keyvault set-policy --object-id $OBJECT_ID --name $KEY_VAULT_NAME --certificate-permissions backup create delete deleteissuers get getissuers import list listissuers managecontacts manageissuers purge recover restore setissuers update --key-permissions create decrypt delete encrypt get import list purge recover restore sign unwrapKey update verify wrapKey --secret-permissions backup delete get list purge recover restore set --storage-permissions backup delete deletesas get getsas list listsas purge recover regeneratekey restore set setsas update
    EOT
    environment = {
      LOCATION = azurerm_resource_group.example.location
      KEY_VAULT_NAME = var.key_vaultname
      IPADDRESS = var.key_vault_ipaddres
      RESOURCE_GROUP_NAME = azurerm_resource_group.example.name
      OBJECT_ID = var.client_objectid
      RETENTION = var.key_vault_retention
    }
  }
  tags = {
      environment = "Bastion & Terraform Demo"
      learning = "AzureStudy"
  }
}
