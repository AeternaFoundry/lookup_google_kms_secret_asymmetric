variable "kms_secret_asymmetric_lookup" {
  description = <<EOT
Map of kms_secret_asymmetric_lookup, attributes below
Required:
    - ciphertext
    - crypto_key_version
Optional:
    - crc32
EOT

  type = map(object({
    ciphertext         = string
    crypto_key_version = string
    crc32              = optional(string)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

