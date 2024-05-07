//
// AppUpdateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppUpdateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    @available(*, deprecated, message: "This property is deprecated.")
    public var prices: AppUpdateRequestDataRelationshipsPrices?
    @available(*, deprecated, message: "This property is deprecated.")
    public var availableTerritories: AppUpdateRequestDataRelationshipsAvailableTerritories?

    public init(prices: AppUpdateRequestDataRelationshipsPrices? = nil, availableTerritories: AppUpdateRequestDataRelationshipsAvailableTerritories? = nil) {
        self.prices = prices
        self.availableTerritories = availableTerritories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case prices
        case availableTerritories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(prices, forKey: .prices)
        try container.encodeIfPresent(availableTerritories, forKey: .availableTerritories)
    }
}

