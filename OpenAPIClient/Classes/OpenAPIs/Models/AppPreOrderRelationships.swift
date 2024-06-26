//
// AppPreOrderRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPreOrderRelationships: Codable, JSONEncodable, Hashable {

    public var app: AppAvailabilityRelationshipsApp?

    public init(app: AppAvailabilityRelationshipsApp? = nil) {
        self.app = app
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
    }
}

