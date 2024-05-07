//
// GameCenterMatchmakingNumberRuleResultsV1MetricResponseDataInnerDimensions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingNumberRuleResultsV1MetricResponseDataInnerDimensions: Codable, JSONEncodable, Hashable {

    public var gameCenterMatchmakingQueue: AppsBetaTesterUsagesV1MetricResponseDataInnerDimensionsBetaTesters?

    public init(gameCenterMatchmakingQueue: AppsBetaTesterUsagesV1MetricResponseDataInnerDimensionsBetaTesters? = nil) {
        self.gameCenterMatchmakingQueue = gameCenterMatchmakingQueue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterMatchmakingQueue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gameCenterMatchmakingQueue, forKey: .gameCenterMatchmakingQueue)
    }
}

