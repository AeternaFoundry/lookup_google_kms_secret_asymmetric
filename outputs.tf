output "kms_secret_asymmetric_lookup_id" {
  description = "Map of id values across all kms_secret_asymmetric_lookup, keyed the same as var.kms_secret_asymmetric_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_kms_secret_asymmetric.kms_secret_asymmetric_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_secret_asymmetric_lookup_ciphertext" {
  description = "Map of ciphertext values across all kms_secret_asymmetric_lookup, keyed the same as var.kms_secret_asymmetric_lookup except keys with no ciphertext are omitted"
  value       = { for k, v in data.google_kms_secret_asymmetric.kms_secret_asymmetric_lookup : k => v.ciphertext if v.ciphertext != null && length(v.ciphertext) > 0 }
}
output "kms_secret_asymmetric_lookup_crc32" {
  description = "Map of crc32 values across all kms_secret_asymmetric_lookup, keyed the same as var.kms_secret_asymmetric_lookup except keys with no crc32 are omitted"
  value       = { for k, v in data.google_kms_secret_asymmetric.kms_secret_asymmetric_lookup : k => v.crc32 if v.crc32 != null && length(v.crc32) > 0 }
}
output "kms_secret_asymmetric_lookup_crypto_key_version" {
  description = "Map of crypto_key_version values across all kms_secret_asymmetric_lookup, keyed the same as var.kms_secret_asymmetric_lookup except keys with no crypto_key_version are omitted"
  value       = { for k, v in data.google_kms_secret_asymmetric.kms_secret_asymmetric_lookup : k => v.crypto_key_version if v.crypto_key_version != null && length(v.crypto_key_version) > 0 }
}
output "kms_secret_asymmetric_lookup_plaintext" {
  description = "Map of plaintext values across all kms_secret_asymmetric_lookup, keyed the same as var.kms_secret_asymmetric_lookup except keys with no plaintext are omitted"
  value       = { for k, v in data.google_kms_secret_asymmetric.kms_secret_asymmetric_lookup : k => v.plaintext if v.plaintext != null && length(v.plaintext) > 0 }
  sensitive   = true
}

