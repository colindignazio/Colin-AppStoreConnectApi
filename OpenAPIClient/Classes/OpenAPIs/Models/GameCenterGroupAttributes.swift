//
// GameCenterGroupAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterGroupAttributes: Codable, JSONEncodable, Hashable {

    public var referenceName: String?

    public init(referenceName: String? = nil) {
        self.referenceName = referenceName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case referenceName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(referenceName, forKey: .referenceName)
    }
}
