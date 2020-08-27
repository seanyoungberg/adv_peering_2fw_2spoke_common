#project_id      = ""                      # Your project ID for the deployment
#public_key_path = "~/.ssh/gcp-demo.pub"   # Your SSH Key

#fw_panos        = "byol-913"              # Uncomment for PAN-OS 9.0.4 - BYOL
#fw_panos        = "bundle1-913"           # Uncomment for PAN-OS 9.0.4 - PAYG Bundle 1
#fw_panos        = "bundle2-913"           # Uncomment for PAN-OS 9.0.4 - PAYG Bundle 2


#-------------------------------------------------------------------
regions            = ["us-east4"]

mgmt_vpc          = "{name}-mgmt-vpc"
mgmt_subnet       = ["{name}-mgmt"]
mgmt_cidr         = ["192.168.0.0/24"]
mgmt_sources      = ["34.99.115.242"]

untrust_vpc       = "{name}-untrust-vpc"
untrust_subnet    = ["{name}-untrust"]
untrust_cidr      = ["192.168.1.0/24"]

trust_vpc         = "{name}-trust-vpc"
trust_subnet      = ["{name}-trust"]
trust_cidr        = ["192.168.2.0/24"]

spoke1_vpc        = "{name}-spoke1-vpc"
spoke1_subnets    = ["{name}-spoke1-subnet1"]
spoke1_cidrs      = ["10.1.0.0/24"]
spoke1_vms        = ["{name}-spoke1-vm1", "{name}-spoke1-vm2"]
spoke1_ilb        = "{name}-spoke1-intlb"
spoke1_ilb_ip     = "10.1.0.100"

spoke2_vpc        = "{name}-spoke2-vpc"
spoke2_subnets    = ["{name}-spoke2-subnet1"]
spoke2_cidrs      = ["10.2.0.0/24"]
spoke2_vms        = ["{name}-spoke2-vm1"]
spoke_user        = "demo"

fw_names_common  = ["{name}-vmseries01", "{name}-vmseries02"]
fw_machine_type   = "n1-standard-4"

extlb_name          = "{name}-vmseries-extlb"
intlb_name          = "{name}-vmseries-intlb"
