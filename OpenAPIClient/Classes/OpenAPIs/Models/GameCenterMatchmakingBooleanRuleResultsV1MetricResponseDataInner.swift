//
// GameCenterMatchmakingBooleanRuleResultsV1MetricResponseDataInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingBooleanRuleResultsV1MetricResponseDataInner: Codable, JSONEncodable, Hashable {

    public enum Granularity: String, Codable, CaseIterable {
        case p1D = "P1D"
        case pt1h = "PT1H"
        case pt15m = "PT15M"
    }
    public var dataPoints: GameCenterMatchmakingBooleanRuleResultsV1MetricResponseDataInnerDataPoints?
    public var dimensions: GameCenterMatchmakingBooleanRuleResultsV1MetricResponseDataInnerDimensions?
    public var granularity: Granularity?

    public init(dataPoints: GameCenterMatchmakingBooleanRuleResultsV1MetricResponseDataInnerDataPoints? = nil, dimensions: GameCenterMatchmakingBooleanRuleResultsV1MetricResponseDataInnerDimensions? = nil, granularity: Granularity? = nil) {
        self.dataPoints = dataPoints
        self.dimensions = dimensions
        self.granularity = granularity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dataPoints
        case dimensions
        case granularity
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dataPoints, forKey: .dataPoints)
        try container.encodeIfPresent(dimensions, forKey: .dimensions)
        try container.encodeIfPresent(granularity, forKey: .granularity)
    }
}

