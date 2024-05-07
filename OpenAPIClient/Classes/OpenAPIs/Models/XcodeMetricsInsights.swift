//
// XcodeMetricsInsights.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct XcodeMetricsInsights: Codable, JSONEncodable, Hashable {

    public var trendingUp: [MetricsInsight]?
    public var regressions: [MetricsInsight]?

    public init(trendingUp: [MetricsInsight]? = nil, regressions: [MetricsInsight]? = nil) {
        self.trendingUp = trendingUp
        self.regressions = regressions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case trendingUp
        case regressions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(trendingUp, forKey: .trendingUp)
        try container.encodeIfPresent(regressions, forKey: .regressions)
    }
}
