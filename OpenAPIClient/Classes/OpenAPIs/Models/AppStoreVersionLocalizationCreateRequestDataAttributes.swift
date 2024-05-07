//
// AppStoreVersionLocalizationCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionLocalizationCreateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var description: String?
    public var locale: String
    public var keywords: String?
    public var marketingUrl: String?
    public var promotionalText: String?
    public var supportUrl: String?
    public var whatsNew: String?

    public init(description: String? = nil, locale: String, keywords: String? = nil, marketingUrl: String? = nil, promotionalText: String? = nil, supportUrl: String? = nil, whatsNew: String? = nil) {
        self.description = description
        self.locale = locale
        self.keywords = keywords
        self.marketingUrl = marketingUrl
        self.promotionalText = promotionalText
        self.supportUrl = supportUrl
        self.whatsNew = whatsNew
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case locale
        case keywords
        case marketingUrl
        case promotionalText
        case supportUrl
        case whatsNew
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(locale, forKey: .locale)
        try container.encodeIfPresent(keywords, forKey: .keywords)
        try container.encodeIfPresent(marketingUrl, forKey: .marketingUrl)
        try container.encodeIfPresent(promotionalText, forKey: .promotionalText)
        try container.encodeIfPresent(supportUrl, forKey: .supportUrl)
        try container.encodeIfPresent(whatsNew, forKey: .whatsNew)
    }
}

