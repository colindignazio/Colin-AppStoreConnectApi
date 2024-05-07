//
// AppClipAdvancedExperienceUpdateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipAdvancedExperienceUpdateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public enum BusinessCategory: String, Codable, CaseIterable {
        case automotive = "AUTOMOTIVE"
        case beauty = "BEAUTY"
        case bikes = "BIKES"
        case books = "BOOKS"
        case casino = "CASINO"
        case education = "EDUCATION"
        case educationJapan = "EDUCATION_JAPAN"
        case entertainment = "ENTERTAINMENT"
        case evCharger = "EV_CHARGER"
        case financialUsd = "FINANCIAL_USD"
        case financialCny = "FINANCIAL_CNY"
        case financialGbp = "FINANCIAL_GBP"
        case financialJpy = "FINANCIAL_JPY"
        case financialEur = "FINANCIAL_EUR"
        case fitness = "FITNESS"
        case foodAndDrink = "FOOD_AND_DRINK"
        case gas = "GAS"
        case grocery = "GROCERY"
        case healthAndMedical = "HEALTH_AND_MEDICAL"
        case hotelAndTravel = "HOTEL_AND_TRAVEL"
        case music = "MUSIC"
        case parking = "PARKING"
        case petServices = "PET_SERVICES"
        case professionalServices = "PROFESSIONAL_SERVICES"
        case shopping = "SHOPPING"
        case ticketing = "TICKETING"
        case transit = "TRANSIT"
    }
    public var action: AppClipAction?
    public var isPoweredBy: Bool?
    public var place: AppClipAdvancedExperienceAttributesPlace?
    public var businessCategory: BusinessCategory?
    public var defaultLanguage: AppClipAdvancedExperienceLanguage?
    public var removed: Bool?

    public init(action: AppClipAction? = nil, isPoweredBy: Bool? = nil, place: AppClipAdvancedExperienceAttributesPlace? = nil, businessCategory: BusinessCategory? = nil, defaultLanguage: AppClipAdvancedExperienceLanguage? = nil, removed: Bool? = nil) {
        self.action = action
        self.isPoweredBy = isPoweredBy
        self.place = place
        self.businessCategory = businessCategory
        self.defaultLanguage = defaultLanguage
        self.removed = removed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case isPoweredBy
        case place
        case businessCategory
        case defaultLanguage
        case removed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(action, forKey: .action)
        try container.encodeIfPresent(isPoweredBy, forKey: .isPoweredBy)
        try container.encodeIfPresent(place, forKey: .place)
        try container.encodeIfPresent(businessCategory, forKey: .businessCategory)
        try container.encodeIfPresent(defaultLanguage, forKey: .defaultLanguage)
        try container.encodeIfPresent(removed, forKey: .removed)
    }
}

