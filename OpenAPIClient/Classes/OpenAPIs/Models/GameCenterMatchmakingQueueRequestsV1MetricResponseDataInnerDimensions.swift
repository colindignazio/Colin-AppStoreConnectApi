//
// GameCenterMatchmakingQueueRequestsV1MetricResponseDataInnerDimensions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingQueueRequestsV1MetricResponseDataInnerDimensions: Codable, JSONEncodable, Hashable {

    public var result: BetaBuildUsagesV1MetricResponseDataInnerDimensionsBundleIds?
    public var gameCenterDetail: AppsBetaTesterUsagesV1MetricResponseDataInnerDimensionsBetaTesters?

    public init(result: BetaBuildUsagesV1MetricResponseDataInnerDimensionsBundleIds? = nil, gameCenterDetail: AppsBetaTesterUsagesV1MetricResponseDataInnerDimensionsBetaTesters? = nil) {
        self.result = result
        self.gameCenterDetail = gameCenterDetail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case result
        case gameCenterDetail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(result, forKey: .result)
        try container.encodeIfPresent(gameCenterDetail, forKey: .gameCenterDetail)
    }
}
