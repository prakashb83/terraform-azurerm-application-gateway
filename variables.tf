variable "name" {
  
}

variable "resource_group_name" {
 
}

variable "location" {
 
}

variable "subnet_id" {
  
}

variable "private_ip_address" {
  

variable "capacity" {
 
  type        = object({ min = number, max = number })
  default     = null
}

variable "diagnostics" {
 
  type        = object({ destination = string, eventhub_name = string, logs = list(string), metrics = list(string) })
  default     = null
}

variable "zones" {
  
  type        = list(string)
  default     = null
}

variable "waf_enabled" {
  
  type        = bool
  default     = true
}

variable "waf_configuration" {
 
  type        = object({ firewall_mode = string, rule_set_type = string, rule_set_version = string, file_upload_limit_mb = number, max_request_body_size_kb = number })
  default     = null
}

variable "custom_policies" {
 
  type        = list(object({ name = string, rule_type = string, action = string, match_conditions = list(object({ match_variables = list(object({ match_variable = string, selector = string })), operator = string, negation_condition = bool, match_values = list(string) })) }))
  default     = []
}

variable "ssl_policy_name" {
 
  default     = "AppGwSslPolicy20170401"
}

variable "custom_error" {
  
  type        = list(object({ status_code = string, error_page_url = string }))
  default     = []
}

variable "tags" {
 
  type        = map(string)
  default     = {}
}
