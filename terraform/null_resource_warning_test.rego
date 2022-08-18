package main

test_deny_null_resources {
	deny with input as null_test_input
}

null_test_input = {"format_version": "0.2", "terraform_version": "1.0.11", "planned_values": {"root_module": {"resources": [{"address": "null_resource.null", "mode": "managed", "type": "null_resource", "name": "null", "provider_name": "registry.terraform.io/hashicorp/null", "schema_version": 0, "values": {"triggers": null}, "sensitive_values": {}}]}}, "resource_changes": [{"address": "null_resource.null", "mode": "managed", "type": "null_resource", "name": "null", "provider_name": "registry.terraform.io/hashicorp/null", "change": {"actions": ["create"], "before": null, "after": {"triggers": null}, "after_unknown": {"id": true}, "before_sensitive": false, "after_sensitive": {}}}], "configuration": {"root_module": {"resources": [{"address": "null_resource.null", "mode": "managed", "type": "null_resource", "name": "null", "provider_config_key": "null", "schema_version": 0}]}}}
