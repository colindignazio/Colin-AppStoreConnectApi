//
// ImageAsset.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ImageAsset: Codable, JSONEncodable, Hashable {

    public var templateUrl: String?
    public var width: Int?
    public var height: Int?

    public init(templateUrl: String? = nil, width: Int? = nil, height: Int? = nil) {
        self.templateUrl = templateUrl
        self.width = width
        self.height = height
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case templateUrl
        case width
        case height
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(templateUrl, forKey: .templateUrl)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(height, forKey: .height)
    }
}
