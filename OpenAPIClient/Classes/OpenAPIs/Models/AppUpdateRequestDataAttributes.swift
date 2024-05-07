//
// AppUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppUpdateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public enum ContentRightsDeclaration: String, Codable, CaseIterable {
        case doesNotUseThirdPartyContent = "DOES_NOT_USE_THIRD_PARTY_CONTENT"
        case usesThirdPartyContent = "USES_THIRD_PARTY_CONTENT"
    }
    public var bundleId: String?
    public var primaryLocale: String?
    public var subscriptionStatusUrl: String?
    public var subscriptionStatusUrlVersion: SubscriptionStatusUrlVersion?
    public var subscriptionStatusUrlForSandbox: String?
    public var subscriptionStatusUrlVersionForSandbox: SubscriptionStatusUrlVersion?
    @available(*, deprecated, message: "This property is deprecated.")
    public var availableInNewTerritories: Bool?
    public var contentRightsDeclaration: ContentRightsDeclaration?

    public init(bundleId: String? = nil, primaryLocale: String? = nil, subscriptionStatusUrl: String? = nil, subscriptionStatusUrlVersion: SubscriptionStatusUrlVersion? = nil, subscriptionStatusUrlForSandbox: String? = nil, subscriptionStatusUrlVersionForSandbox: SubscriptionStatusUrlVersion? = nil, availableInNewTerritories: Bool? = nil, contentRightsDeclaration: ContentRightsDeclaration? = nil) {
        self.bundleId = bundleId
        self.primaryLocale = primaryLocale
        self.subscriptionStatusUrl = subscriptionStatusUrl
        self.subscriptionStatusUrlVersion = subscriptionStatusUrlVersion
        self.subscriptionStatusUrlForSandbox = subscriptionStatusUrlForSandbox
        self.subscriptionStatusUrlVersionForSandbox = subscriptionStatusUrlVersionForSandbox
        self.availableInNewTerritories = availableInNewTerritories
        self.contentRightsDeclaration = contentRightsDeclaration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bundleId
        case primaryLocale
        case subscriptionStatusUrl
        case subscriptionStatusUrlVersion
        case subscriptionStatusUrlForSandbox
        case subscriptionStatusUrlVersionForSandbox
        case availableInNewTerritories
        case contentRightsDeclaration
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(bundleId, forKey: .bundleId)
        try container.encodeIfPresent(primaryLocale, forKey: .primaryLocale)
        try container.encodeIfPresent(subscriptionStatusUrl, forKey: .subscriptionStatusUrl)
        try container.encodeIfPresent(subscriptionStatusUrlVersion, forKey: .subscriptionStatusUrlVersion)
        try container.encodeIfPresent(subscriptionStatusUrlForSandbox, forKey: .subscriptionStatusUrlForSandbox)
        try container.encodeIfPresent(subscriptionStatusUrlVersionForSandbox, forKey: .subscriptionStatusUrlVersionForSandbox)
        try container.encodeIfPresent(availableInNewTerritories, forKey: .availableInNewTerritories)
        try container.encodeIfPresent(contentRightsDeclaration, forKey: .contentRightsDeclaration)
    }
}

