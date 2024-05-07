//
// AppPreviewRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPreviewRelationships: Codable, JSONEncodable, Hashable {

    public var appPreviewSet: AppPreviewRelationshipsAppPreviewSet?

    public init(appPreviewSet: AppPreviewRelationshipsAppPreviewSet? = nil) {
        self.appPreviewSet = appPreviewSet
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appPreviewSet
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appPreviewSet, forKey: .appPreviewSet)
    }
}
