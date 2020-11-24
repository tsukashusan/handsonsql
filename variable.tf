variable "region" {
  type = string
  default = "japaneast"
}

variable "resourcename" {
  type = string
  default = "<Resource Name>"
}

variable "networkaddress" {
  type    = list(string)
  default = ["192.168.0.0/24"]
}

variable "clientip" {
  type    = string
  default = "<ipaddress>/32"
}

variable "clientipstart" {
  type    = string
  default = "<ipaddress>"
}

variable "clientipend" {
  type    = string
  default = "<ipaddress>"
}

variable "internalsubnet" {
  type    = list(string)
  default = ["192.168.0.0/27"]
}

variable "bastionsubnet" {
  type    = list(string)
  default = ["192.168.0.32/27"]
}

variable "vmsize" {
  type    = string
  default = "Standard_F4s_v2"
}

variable "vmuser" {
  type    = string
  default = "adminuser"
}

variable "vmpassword" {
  type    = string
  default = "<password>"
}

variable "publisher" {
  type    = string
  default = "MicrosoftWindowsServer"
}

variable "offer" {
  type    = string
  default = "windowsserver-gen2preview"
}

variable "sku" {
  type    = string
  default = "2019-datacenter-gen2"
}

variable "imageversion" {
  type    = string
  default = "latest"
}

variable "sqlservername" {
  type    = string
  default = "<prefix>sqlserver"
}

variable "sqluser" {
  type    = string
  default = "adminuser"
}

variable "sqlpassword" {
  type    = string
  default = "<password>"
}

variable "storageaccountname" {
  type    = string
  default = "<prefix>synapse"
}

variable "storagecontainer" {
  type    = string
  default = "synapse"
}

variable "databricksname" {
  type    = string
  default = "<prefix>databricks"
}