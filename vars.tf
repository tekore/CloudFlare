variable "api_key" {
   description = "Cloudflare API Key"
   type        = string
   sensitive   = true
}

variable "onprem_ip" {
   description = "OnPrem BareMetal Server IP"
   type        = string
   sensitive   = true
}

variable "bastion_ip" {
   description = "Bastion Virtual Server IP"
   type        = string
   sensitive   = true
}