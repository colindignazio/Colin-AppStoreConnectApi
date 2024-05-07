//
// GameCenterMatchmakingRuleSetTestAttributesMatchmakingResultsInnerInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingRuleSetTestAttributesMatchmakingResultsInnerInner: Codable, JSONEncodable, Hashable {

    public var requestName: String?
    public var teamAssignments: [GameCenterMatchmakingTeamAssignment]?

    public init(requestName: String? = nil, teamAssignments: [GameCenterMatchmakingTeamAssignment]? = nil) {
        self.requestName = requestName
        self.teamAssignments = teamAssignments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case requestName
        case teamAssignments
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(requestName, forKey: .requestName)
        try container.encodeIfPresent(teamAssignments, forKey: .teamAssignments)
    }
}

