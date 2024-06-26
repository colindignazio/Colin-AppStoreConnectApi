//
// GameCenterMatchmakingRuleSetTestCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingRuleSetTestCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var matchmakingRuleSet: GameCenterMatchmakingQueueCreateRequestDataRelationshipsRuleSet
    public var matchmakingRequests: GameCenterMatchmakingRuleSetTestCreateRequestDataRelationshipsMatchmakingRequests

    public init(matchmakingRuleSet: GameCenterMatchmakingQueueCreateRequestDataRelationshipsRuleSet, matchmakingRequests: GameCenterMatchmakingRuleSetTestCreateRequestDataRelationshipsMatchmakingRequests) {
        self.matchmakingRuleSet = matchmakingRuleSet
        self.matchmakingRequests = matchmakingRequests
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case matchmakingRuleSet
        case matchmakingRequests
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(matchmakingRuleSet, forKey: .matchmakingRuleSet)
        try container.encode(matchmakingRequests, forKey: .matchmakingRequests)
    }
}

