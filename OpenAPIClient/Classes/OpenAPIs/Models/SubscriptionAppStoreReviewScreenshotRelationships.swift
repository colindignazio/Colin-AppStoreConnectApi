//
// SubscriptionAppStoreReviewScreenshotRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SubscriptionAppStoreReviewScreenshotRelationships: Codable, JSONEncodable, Hashable {

    public var subscription: PromotedPurchaseRelationshipsSubscription?

    public init(subscription: PromotedPurchaseRelationshipsSubscription? = nil) {
        self.subscription = subscription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subscription
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(subscription, forKey: .subscription)
    }
}

