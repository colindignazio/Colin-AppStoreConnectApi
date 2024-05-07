//
// AppStoreReviewDetailCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreReviewDetailCreateRequestData: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case appstorereviewdetails = "appStoreReviewDetails"
    }
    public var type: ModelType
    public var attributes: AppStoreReviewDetailAttributes?
    public var relationships: AlternativeDistributionPackageCreateRequestDataRelationships

    public init(type: ModelType, attributes: AppStoreReviewDetailAttributes? = nil, relationships: AlternativeDistributionPackageCreateRequestDataRelationships) {
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

