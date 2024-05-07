//
// AppAvailabilityV2CreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppAvailabilityV2CreateRequestData: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case appavailabilities = "appAvailabilities"
    }
    public var type: ModelType
    public var attributes: AppAvailabilityV2CreateRequestDataAttributes
    public var relationships: AppAvailabilityV2CreateRequestDataRelationships

    public init(type: ModelType, attributes: AppAvailabilityV2CreateRequestDataAttributes, relationships: AppAvailabilityV2CreateRequestDataRelationships) {
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
        try container.encode(attributes, forKey: .attributes)
        try container.encode(relationships, forKey: .relationships)
    }
}

