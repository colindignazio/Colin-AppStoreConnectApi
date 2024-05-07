//
// GameCenterAchievementReleaseAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterAchievementReleaseAttributes: Codable, JSONEncodable, Hashable {

    public var live: Bool?

    public init(live: Bool? = nil) {
        self.live = live
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case live
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(live, forKey: .live)
    }
}

