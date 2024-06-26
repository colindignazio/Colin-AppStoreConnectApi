//
// GameCenterMatchmakingAppRequestsV1MetricResponseDataInnerDimensions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterMatchmakingAppRequestsV1MetricResponseDataInnerDimensions: Codable, JSONEncodable, Hashable {

    public var result: BetaBuildUsagesV1MetricResponseDataInnerDimensionsBundleIds?

    public init(result: BetaBuildUsagesV1MetricResponseDataInnerDimensionsBundleIds? = nil) {
        self.result = result
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case result
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(result, forKey: .result)
    }
}

