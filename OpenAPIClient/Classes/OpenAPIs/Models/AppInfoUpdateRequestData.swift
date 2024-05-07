//
// AppInfoUpdateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppInfoUpdateRequestData: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case appinfos = "appInfos"
    }
    public var type: ModelType
    public var id: String
    public var relationships: AppInfoUpdateRequestDataRelationships?

    public init(type: ModelType, id: String, relationships: AppInfoUpdateRequestDataRelationships? = nil) {
        self.type = type
        self.id = id
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case id
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(relationships, forKey: .relationships)
    }
}
