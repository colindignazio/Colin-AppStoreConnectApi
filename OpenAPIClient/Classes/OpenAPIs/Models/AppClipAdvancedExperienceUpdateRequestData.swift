//
// AppClipAdvancedExperienceUpdateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipAdvancedExperienceUpdateRequestData: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case appclipadvancedexperiences = "appClipAdvancedExperiences"
    }
    public var type: ModelType
    public var id: String
    public var attributes: AppClipAdvancedExperienceUpdateRequestDataAttributes?
    public var relationships: AppClipAdvancedExperienceUpdateRequestDataRelationships?

    public init(type: ModelType, id: String, attributes: AppClipAdvancedExperienceUpdateRequestDataAttributes? = nil, relationships: AppClipAdvancedExperienceUpdateRequestDataRelationships? = nil) {
        self.type = type
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case attributes
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(relationships, forKey: .relationships)
    }
}
