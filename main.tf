terraform {
  required_version = ">= 1.10.3"
  required_providers {
    esxi = {
      source  = "josenk/esxi"
      version = "1.10.3"
    }
  }
}

provider "esxi" {
  esxi_hostname = "192.168.1.9"
  esxi_hostport = "22"
  esxi_hostssl  = "443"
  esxi_username = "root"
  esxi_password = "Welkom01!"
}

locals {
  templatevars = {
    public_key   = var.public_key
    ssh_username = var.ssh_username
  }
}

# Eén Ubuntu VM
resource "esxi_guest" "ubuntu_vm" {
  guest_name = "ubuntu-demo"
  disk_store = var.disk_store
  memsize    = var.memory_mb
  numvcpus   = var.num_cpus
  ovf_source = var.ovf_source   # Ubuntu cloud image OVA/OVF

  network_interfaces {
    virtual_network = var.network
  }

  guestinfo = {
    # cloud-init config voor gebruiker + ssh key
    "userdata"          = base64encode(templatefile("${path.module}/userdata.yaml", local.templatevars))
    "userdata.encoding" = "base64"
  }
}

# Inventory genereren voor Ansible
resource "local_file" "inventory" {
  filename = "inventory.ini"
  content  = <<EOF
[ubuntu]
${esxi_guest.ubuntu_vm.ip_address} app_name="demoapp"
EOF
}

# Terraform output
output "vm_ip" {
  value = esxi_guest.ubuntu_vm.ip_address
}
