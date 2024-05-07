//
// SubscriptionOfferCodePricesResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum SubscriptionOfferCodePricesResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeSubscriptionPricePoint(SubscriptionPricePoint)
    case typeTerritory(Territory)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeSubscriptionPricePoint(let value):
            try container.encode(value)
        case .typeTerritory(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(SubscriptionPricePoint.self) {
            self = .typeSubscriptionPricePoint(value)
        } else if let value = try? container.decode(Territory.self) {
            self = .typeTerritory(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of SubscriptionOfferCodePricesResponseIncludedInner"))
        }
    }
}

