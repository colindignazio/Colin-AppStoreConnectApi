//
// InAppPurchaseV2Relationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InAppPurchaseV2Relationships: Codable, JSONEncodable, Hashable {

    public var inAppPurchaseLocalizations: InAppPurchaseV2RelationshipsInAppPurchaseLocalizations?
    public var pricePoints: InAppPurchaseV2RelationshipsPricePoints?
    public var content: InAppPurchaseV2RelationshipsContent?
    public var appStoreReviewScreenshot: InAppPurchaseV2RelationshipsAppStoreReviewScreenshot?
    public var promotedPurchase: InAppPurchaseV2RelationshipsPromotedPurchase?
    public var iapPriceSchedule: InAppPurchaseV2RelationshipsIapPriceSchedule?
    public var inAppPurchaseAvailability: InAppPurchaseV2RelationshipsInAppPurchaseAvailability?

    public init(inAppPurchaseLocalizations: InAppPurchaseV2RelationshipsInAppPurchaseLocalizations? = nil, pricePoints: InAppPurchaseV2RelationshipsPricePoints? = nil, content: InAppPurchaseV2RelationshipsContent? = nil, appStoreReviewScreenshot: InAppPurchaseV2RelationshipsAppStoreReviewScreenshot? = nil, promotedPurchase: InAppPurchaseV2RelationshipsPromotedPurchase? = nil, iapPriceSchedule: InAppPurchaseV2RelationshipsIapPriceSchedule? = nil, inAppPurchaseAvailability: InAppPurchaseV2RelationshipsInAppPurchaseAvailability? = nil) {
        self.inAppPurchaseLocalizations = inAppPurchaseLocalizations
        self.pricePoints = pricePoints
        self.content = content
        self.appStoreReviewScreenshot = appStoreReviewScreenshot
        self.promotedPurchase = promotedPurchase
        self.iapPriceSchedule = iapPriceSchedule
        self.inAppPurchaseAvailability = inAppPurchaseAvailability
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case inAppPurchaseLocalizations
        case pricePoints
        case content
        case appStoreReviewScreenshot
        case promotedPurchase
        case iapPriceSchedule
        case inAppPurchaseAvailability
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(inAppPurchaseLocalizations, forKey: .inAppPurchaseLocalizations)
        try container.encodeIfPresent(pricePoints, forKey: .pricePoints)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(appStoreReviewScreenshot, forKey: .appStoreReviewScreenshot)
        try container.encodeIfPresent(promotedPurchase, forKey: .promotedPurchase)
        try container.encodeIfPresent(iapPriceSchedule, forKey: .iapPriceSchedule)
        try container.encodeIfPresent(inAppPurchaseAvailability, forKey: .inAppPurchaseAvailability)
    }
}

