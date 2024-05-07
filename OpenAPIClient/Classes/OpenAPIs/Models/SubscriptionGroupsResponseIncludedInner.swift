//
// SubscriptionGroupsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum SubscriptionGroupsResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeSubscription(Subscription)
    case typeSubscriptionGroupLocalization(SubscriptionGroupLocalization)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeSubscription(let value):
            try container.encode(value)
        case .typeSubscriptionGroupLocalization(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Subscription.self) {
            self = .typeSubscription(value)
        } else if let value = try? container.decode(SubscriptionGroupLocalization.self) {
            self = .typeSubscriptionGroupLocalization(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of SubscriptionGroupsResponseIncludedInner"))
        }
    }
}
