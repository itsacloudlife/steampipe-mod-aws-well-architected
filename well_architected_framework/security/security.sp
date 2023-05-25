locals {
  well_architected_framework_security_common_tags = merge(local.well_architected_framework_common_tags, {
    pillar = "security"
  })
}

benchmark "well_architected_framework_security" {
  title       = "Security Pillar"
  description = "The security pillar focuses on protecting information and systems. Key topics include confidentiality and integrity of data, managing user permissions, and establishing controls to detect security events."
  children = [
    benchmark.well_architected_framework_security_sec01,
    benchmark.well_architected_framework_security_sec02,
    benchmark.well_architected_framework_security_sec03,
    benchmark.well_architected_framework_security_sec04,
    benchmark.well_architected_framework_security_sec05,
    benchmark.well_architected_framework_security_sec06,
    benchmark.well_architected_framework_security_sec08,
    benchmark.well_architected_framework_security_sec09,
    benchmark.well_architected_framework_security_sec10,
    benchmark.well_architected_framework_security_sec11
  ]

  tags = local.well_architected_framework_security_common_tags
}