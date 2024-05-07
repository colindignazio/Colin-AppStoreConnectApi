//
// EndUserLicenseAgreementRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct EndUserLicenseAgreementRelationships: Codable, JSONEncodable, Hashable {

    public var app: AppAvailabilityRelationshipsApp?
    public var territories: AppAvailabilityRelationshipsAvailableTerritories?

    public init(app: AppAvailabilityRelationshipsApp? = nil, territories: AppAvailabilityRelationshipsAvailableTerritories? = nil) {
        self.app = app
        self.territories = territories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case territories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(territories, forKey: .territories)
    }
}

