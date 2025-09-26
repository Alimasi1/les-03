variable "ssh_username" { 
  description = "Gebruikersnaam voor de VM"
  type        = string
  default     = "student"
}

variable "memory_mb" {
  description = "RAM (MB)"
  type        = number
  default     = 2048
}

variable "num_cpus" {
  description = "Aantal vCPU's"
  type        = number
  default     = 1
}

variable "disk_store" {
  description = "Naam van de datastore op ESXi"
  type        = string
  default     = "Datastore1"
}

variable "ovf_source" {
  description = "Pad naar Ubuntu cloud image (OVA)"
  type        = string
  default     = "https://cloud-images.ubuntu.com/releases/24.04/release/ubuntu-24.04-server-cloudimg-amd64.ova"
}

variable "network" {
  description = "Virtueel netwerk in ESXi"
  type        = string
  default     = "VM Network"
}

variable "public_key" {
  description = "SSH public key voor login"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC5K4X7xgAZCxWdbA4HOELS9CFeH3gIbkKBf8glb+6KaC7mVJdQXmHPMTdEGqpXCwnj5V+n0pniSVLxg2yjz0iKcC4V9LlkiVelAYKY3GvzNgtoSo4/LRL0XIsaxPJdLmy8wdEXEKg0cVj+uXAUXylsCdBchvNNHBA7hAu48zinIORZ1RqBR4Vl8zJ2h+u3rgyhDx49B2X10mAuVymLaZPV7dcyKNs5K8Dck5+rtdQ+Dtnx4QkNy4FDv1QqxFNdJfQJdhs5KpRlBB0Hy+nZTMvcb4MoVVo1sl5yOOC+R2zByqqOMkPDDt31WR+u9L4y/JHByboA9B35nKGqzTM8tie9l4dL0bEHliBj9ZAgvJIzDNrtIS21DqpRW0cwQRgLn939lcUb7mHKHIuvhrVzKgdmw4C/Eq/p92y4RNvUbrIdJNZnkaQuB46WvvUbh7bwfjMTLfmMqxSKS+qedaffWV49v48wQMgVL/mztgBcafieqk3cjox7zB4AplRLnMji6fhwrQ27zZLKkLX9fdG8Su4p+OIX/IG0i0+xKYv+7wxMm4WlgTPar/XPlSxSMt1T9UuybX668pM7Z/L+NtTCapQaxYLiNV/69h7iK0NgjjuBlWyP2V6QjNoMb6HIapYxQiTl6EDSuSDfEsyKIovKUxZmbZm8TbA7Ceo7HXvK3w0wfw== azure_vm_key"
}
