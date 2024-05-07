//
// GameCenterLeaderboardLocalizationAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterLeaderboardLocalizationAttributes: Codable, JSONEncodable, Hashable {

    public var locale: String?
    public var name: String?
    public var formatterOverride: GameCenterLeaderboardFormatter?
    public var formatterSuffix: String?
    public var formatterSuffixSingular: String?

    public init(locale: String? = nil, name: String? = nil, formatterOverride: GameCenterLeaderboardFormatter? = nil, formatterSuffix: String? = nil, formatterSuffixSingular: String? = nil) {
        self.locale = locale
        self.name = name
        self.formatterOverride = formatterOverride
        self.formatterSuffix = formatterSuffix
        self.formatterSuffixSingular = formatterSuffixSingular
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case locale
        case name
        case formatterOverride
        case formatterSuffix
        case formatterSuffixSingular
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(locale, forKey: .locale)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(formatterOverride, forKey: .formatterOverride)
        try container.encodeIfPresent(formatterSuffix, forKey: .formatterSuffix)
        try container.encodeIfPresent(formatterSuffixSingular, forKey: .formatterSuffixSingular)
    }
}

