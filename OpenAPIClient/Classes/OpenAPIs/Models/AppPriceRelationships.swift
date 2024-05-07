//
// AppPriceRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPriceRelationships: Codable, JSONEncodable, Hashable {

    public var app: AppAvailabilityRelationshipsApp?
    public var priceTier: AppPricePointV2RelationshipsPriceTier?

    public init(app: AppAvailabilityRelationshipsApp? = nil, priceTier: AppPricePointV2RelationshipsPriceTier? = nil) {
        self.app = app
        self.priceTier = priceTier
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case priceTier
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(priceTier, forKey: .priceTier)
    }
}

