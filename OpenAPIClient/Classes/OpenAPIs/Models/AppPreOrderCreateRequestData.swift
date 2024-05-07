//
// AppPreOrderCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPreOrderCreateRequestData: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case apppreorders = "appPreOrders"
    }
    public var type: ModelType
    public var attributes: AppPreOrderCreateRequestDataAttributes?
    public var relationships: AlternativeDistributionKeyCreateRequestDataRelationships

    public init(type: ModelType, attributes: AppPreOrderCreateRequestDataAttributes? = nil, relationships: AlternativeDistributionKeyCreateRequestDataRelationships) {
        self.type = type
        self.attributes = attributes
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case attributes
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encode(relationships, forKey: .relationships)
    }
}

