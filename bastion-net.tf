provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x.
    # If you're using version 1.x, the "features" block is not allowed.
    version = "~> 2.38.0"
    features {}
}

resource "azurerm_resource_group" "example" {
    location = var.region
    name     = var.resourcename
}

resource "azurerm_virtual_network" "example" {
    name                = "azstudynetwork"
    address_space       = var.networkaddress
    location            = azurerm_resource_group.example.location
    resource_group_name = azurerm_resource_group.example.name

    tags = {
        environment = "Bastion & Terraform Demo"
        learning = "AzureStudy"
    }
}

resource "azurerm_subnet" "internal" {
    name                 = "internal"
    resource_group_name  = azurerm_resource_group.example.name
    virtual_network_name = azurerm_virtual_network.example.name
    address_prefixes       = var.internalsubnet
}

resource "azurerm_subnet" "bastion" {
    name                 = "AzureBastionSubnet "
    resource_group_name  = azurerm_resource_group.example.name
    virtual_network_name = azurerm_virtual_network.example.name
    address_prefixes       = var.bastionsubnet
}

resource "azurerm_network_security_group" "bastion" {
    name                = "BastionSecurityGroup"
    location            = azurerm_resource_group.example.location
    resource_group_name = azurerm_resource_group.example.name

    security_rule {
        name                       = "AllowHttpsInbound"
        priority                   = 120
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = var.clientip
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "AllowGatewayManagerInbound"
        priority                   = 130
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "AllowAzureLoadBalancerInbound"
        priority                   = 140
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "AzureLoadBalancer"
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "AllowSshRdpOutbound"
        priority                   = 100
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_ranges    = [22,3389]
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    security_rule {
        name                       = "AllowAzureCloudOutbound"
        priority                   = 110
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = "Bastion & Terraform Demo"
    }
}

resource "azurerm_network_interface" "main" {
  name                = "jumpserver-nic"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
  }
  tags = {
      environment = "Bastion & Terraform Demo"
  }
}

resource "azurerm_windows_virtual_machine" "main" {
  name                            = "jumpserver"
  resource_group_name             = azurerm_resource_group.example.name
  location                        = azurerm_resource_group.example.location
  size                            = var.vmsize
  admin_username                  = var.vmuser
  admin_password                  = var.vmpassword
  network_interface_ids = [
    azurerm_network_interface.main.id,
  ]

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.imageversion
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
  tags = {
      environment = "Bastion & Terraform Demo"
  }
}

resource "azurerm_public_ip" "example" {
  name                = "bastionip"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags = {
      environment = "Bastion & Terraform Demo"
  }
}

# Connect the security group to the network interface
resource "azurerm_subnet_network_security_group_association" "example" {
    subnet_id                 = azurerm_subnet.bastion.id
    network_security_group_id = azurerm_network_security_group.bastion.id
}

resource "azurerm_bastion_host" "example" {
  name                = "examplebastion"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.bastion.id
    public_ip_address_id = azurerm_public_ip.example.id
  }
  tags = {
      environment = "Bastion & Terraform Demo"
  }
}
