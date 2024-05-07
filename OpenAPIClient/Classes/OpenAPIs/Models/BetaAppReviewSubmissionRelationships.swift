//
// BetaAppReviewSubmissionRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BetaAppReviewSubmissionRelationships: Codable, JSONEncodable, Hashable {

    public var build: AppStoreVersionRelationshipsBuild?

    public init(build: AppStoreVersionRelationshipsBuild? = nil) {
        self.build = build
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case build
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(build, forKey: .build)
    }
}

