//
// BetaBuildUsagesV1MetricResponseDataInnerDimensionsBundleIds.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaBuildUsagesV1MetricResponseDataInnerDimensionsBundleIds: Codable, JSONEncodable, Hashable {

    public var links: BetaBuildUsagesV1MetricResponseDataInnerDimensionsBundleIdsLinks?

    public init(links: BetaBuildUsagesV1MetricResponseDataInnerDimensionsBundleIdsLinks? = nil) {
        self.links = links
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case links
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(links, forKey: .links)
    }
}

