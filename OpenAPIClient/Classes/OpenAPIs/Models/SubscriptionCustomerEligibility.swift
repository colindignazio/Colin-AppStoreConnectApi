//
// SubscriptionCustomerEligibility.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum SubscriptionCustomerEligibility: String, Codable, CaseIterable {
    case new = "NEW"
    case existing = "EXISTING"
    case expired = "EXPIRED"
}
