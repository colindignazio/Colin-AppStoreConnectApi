//
// SubscriptionOfferCodeOneTimeUseCodeCreateRequestData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionOfferCodeOneTimeUseCodeCreateRequestData: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case subscriptionoffercodeonetimeusecodes = "subscriptionOfferCodeOneTimeUseCodes"
    }
    public var type: ModelType
    public var attributes: SubscriptionOfferCodeOneTimeUseCodeCreateRequestDataAttributes
    public var relationships: SubscriptionOfferCodeCustomCodeCreateRequestDataRelationships

    public init(type: ModelType, attributes: SubscriptionOfferCodeOneTimeUseCodeCreateRequestDataAttributes, relationships: SubscriptionOfferCodeCustomCodeCreateRequestDataRelationships) {
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

