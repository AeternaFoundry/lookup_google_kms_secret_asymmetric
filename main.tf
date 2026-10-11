data "google_kms_secret_asymmetric" "kms_secret_asymmetric_lookup" {
  for_each = var.kms_secret_asymmetric_lookup

  ciphertext         = each.value.ciphertext
  crypto_key_version = each.value.crypto_key_version
  crc32              = each.value.crc32
}

