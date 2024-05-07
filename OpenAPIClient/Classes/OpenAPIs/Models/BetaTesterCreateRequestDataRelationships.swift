//
// BetaTesterCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaTesterCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var betaGroups: BetaTesterCreateRequestDataRelationshipsBetaGroups?
    public var builds: BetaGroupCreateRequestDataRelationshipsBuilds?

    public init(betaGroups: BetaTesterCreateRequestDataRelationshipsBetaGroups? = nil, builds: BetaGroupCreateRequestDataRelationshipsBuilds? = nil) {
        self.betaGroups = betaGroups
        self.builds = builds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case betaGroups
        case builds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(betaGroups, forKey: .betaGroups)
        try container.encodeIfPresent(builds, forKey: .builds)
    }
}

