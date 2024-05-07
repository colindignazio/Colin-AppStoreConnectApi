//
// InAppPurchaseSubmissionCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InAppPurchaseSubmissionCreateRequestData: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case inapppurchasesubmissions = "inAppPurchaseSubmissions"
    }
    public var type: ModelType
    public var relationships: InAppPurchaseAppStoreReviewScreenshotCreateRequestDataRelationships

    public init(type: ModelType, relationships: InAppPurchaseAppStoreReviewScreenshotCreateRequestDataRelationships) {
        self.type = type
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case relationships
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(relationships, forKey: .relationships)
    }
}

