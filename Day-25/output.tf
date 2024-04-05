output "webapp_url" {
  value = azurerm_linux_web_app.webapp87.default_hostname
}

output "webapp_ips" {
  value = azurerm_linux_web_app.webapp87.outbound_ip_addresses
}