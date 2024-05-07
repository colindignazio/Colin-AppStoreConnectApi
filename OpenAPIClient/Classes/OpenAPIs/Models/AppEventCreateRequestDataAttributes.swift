//
// AppEventCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppEventCreateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public enum Badge: String, Codable, CaseIterable {
        case liveEvent = "LIVE_EVENT"
        case premiere = "PREMIERE"
        case challenge = "CHALLENGE"
        case competition = "COMPETITION"
        case newSeason = "NEW_SEASON"
        case majorUpdate = "MAJOR_UPDATE"
        case specialEvent = "SPECIAL_EVENT"
    }
    public enum PurchaseRequirement: String, Codable, CaseIterable {
        case noCostAssociated = "NO_COST_ASSOCIATED"
        case inAppPurchase = "IN_APP_PURCHASE"
        case subscription = "SUBSCRIPTION"
        case inAppPurchaseAndSubscription = "IN_APP_PURCHASE_AND_SUBSCRIPTION"
        case inAppPurchaseOrSubscription = "IN_APP_PURCHASE_OR_SUBSCRIPTION"
    }
    public enum Priority: String, Codable, CaseIterable {
        case high = "HIGH"
        case normal = "NORMAL"
    }
    public enum Purpose: String, Codable, CaseIterable {
        case appropriateForAllUsers = "APPROPRIATE_FOR_ALL_USERS"
        case attractNewUsers = "ATTRACT_NEW_USERS"
        case keepActiveUsersInformed = "KEEP_ACTIVE_USERS_INFORMED"
        case bringBackLapsedUsers = "BRING_BACK_LAPSED_USERS"
    }
    public var referenceName: String
    public var badge: Badge?
    public var deepLink: String?
    public var purchaseRequirement: PurchaseRequirement?
    public var primaryLocale: String?
    public var priority: Priority?
    public var purpose: Purpose?
    public var territorySchedules: [AppEventAttributesTerritorySchedulesInner]?

    public init(referenceName: String, badge: Badge? = nil, deepLink: String? = nil, purchaseRequirement: PurchaseRequirement? = nil, primaryLocale: String? = nil, priority: Priority? = nil, purpose: Purpose? = nil, territorySchedules: [AppEventAttributesTerritorySchedulesInner]? = nil) {
        self.referenceName = referenceName
        self.badge = badge
        self.deepLink = deepLink
        self.purchaseRequirement = purchaseRequirement
        self.primaryLocale = primaryLocale
        self.priority = priority
        self.purpose = purpose
        self.territorySchedules = territorySchedules
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case referenceName
        case badge
        case deepLink
        case purchaseRequirement
        case primaryLocale
        case priority
        case purpose
        case territorySchedules
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(referenceName, forKey: .referenceName)
        try container.encodeIfPresent(badge, forKey: .badge)
        try container.encodeIfPresent(deepLink, forKey: .deepLink)
        try container.encodeIfPresent(purchaseRequirement, forKey: .purchaseRequirement)
        try container.encodeIfPresent(primaryLocale, forKey: .primaryLocale)
        try container.encodeIfPresent(priority, forKey: .priority)
        try container.encodeIfPresent(purpose, forKey: .purpose)
        try container.encodeIfPresent(territorySchedules, forKey: .territorySchedules)
    }
}

