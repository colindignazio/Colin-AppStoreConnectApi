//
// GameCenterMatchmakingSessionsV1MetricResponseDataInnerDataPointsValues.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingSessionsV1MetricResponseDataInnerDataPointsValues: Codable, JSONEncodable, Hashable {

    public var count: Int?
    public var averagePlayerCount: Double?
    public var p50PlayerCount: Double?
    public var p95PlayerCount: Double?

    public init(count: Int? = nil, averagePlayerCount: Double? = nil, p50PlayerCount: Double? = nil, p95PlayerCount: Double? = nil) {
        self.count = count
        self.averagePlayerCount = averagePlayerCount
        self.p50PlayerCount = p50PlayerCount
        self.p95PlayerCount = p95PlayerCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case averagePlayerCount
        case p50PlayerCount
        case p95PlayerCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(averagePlayerCount, forKey: .averagePlayerCount)
        try container.encodeIfPresent(p50PlayerCount, forKey: .p50PlayerCount)
        try container.encodeIfPresent(p95PlayerCount, forKey: .p95PlayerCount)
    }
}

