//
// GameCenterMatchmakingRuleSetCreateRequestDataAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingRuleSetCreateRequestDataAttributes: Codable, JSONEncodable, Hashable {

    public var referenceName: String
    public var ruleLanguageVersion: Int
    public var minPlayers: Int
    public var maxPlayers: Int

    public init(referenceName: String, ruleLanguageVersion: Int, minPlayers: Int, maxPlayers: Int) {
        self.referenceName = referenceName
        self.ruleLanguageVersion = ruleLanguageVersion
        self.minPlayers = minPlayers
        self.maxPlayers = maxPlayers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case referenceName
        case ruleLanguageVersion
        case minPlayers
        case maxPlayers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(referenceName, forKey: .referenceName)
        try container.encode(ruleLanguageVersion, forKey: .ruleLanguageVersion)
        try container.encode(minPlayers, forKey: .minPlayers)
        try container.encode(maxPlayers, forKey: .maxPlayers)
    }
}
