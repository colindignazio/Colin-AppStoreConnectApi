//
// SubscriptionOfferCodeCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionOfferCodeCreateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var name: String
    public var customerEligibilities: [SubscriptionCustomerEligibility]
    public var offerEligibility: SubscriptionOfferEligibility
    public var duration: SubscriptionOfferDuration
    public var offerMode: SubscriptionOfferMode
    public var numberOfPeriods: Int

    public init(name: String, customerEligibilities: [SubscriptionCustomerEligibility], offerEligibility: SubscriptionOfferEligibility, duration: SubscriptionOfferDuration, offerMode: SubscriptionOfferMode, numberOfPeriods: Int) {
        self.name = name
        self.customerEligibilities = customerEligibilities
        self.offerEligibility = offerEligibility
        self.duration = duration
        self.offerMode = offerMode
        self.numberOfPeriods = numberOfPeriods
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case customerEligibilities
        case offerEligibility
        case duration
        case offerMode
        case numberOfPeriods
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(customerEligibilities, forKey: .customerEligibilities)
        try container.encode(offerEligibility, forKey: .offerEligibility)
        try container.encode(duration, forKey: .duration)
        try container.encode(offerMode, forKey: .offerMode)
        try container.encode(numberOfPeriods, forKey: .numberOfPeriods)
    }
}
