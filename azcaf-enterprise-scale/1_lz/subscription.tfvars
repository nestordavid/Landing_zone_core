
root_id = "demo"
primary_location = "eastus"
billing_profile = "3ae5db7a-9d4b-5abb-20bd-1af2ecf39a1e:31806f85-8d2d-4e59-b04d-9844eaf7e670_2019-05-31"

lz_vending = {
    subscription01 = {
        subscription_alias_enabled = true
        subscription_alias_name = "demo-connectivity"
        subscription_display_name = "Connectivity"
        subscription_workload = "Production"    
    }
    subscription02 = {
        subscription_alias_enabled = true
        subscription_alias_name = "demo-management"
        subscription_display_name = "Management"
        subscription_workload = "Development"    
    }

    subscription03 = {
        subscription_alias_enabled = true
        subscription_alias_name = "demo-identity"
        subscription_display_name = "DevTest"
        subscription_workload = "Identity"    
    }
}

