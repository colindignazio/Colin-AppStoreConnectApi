//
// AppCategoryRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppCategoryRelationships: Codable, JSONEncodable, Hashable {

    public var subcategories: AppCategoryRelationshipsSubcategories?
    public var parent: AppCategoryRelationshipsParent?

    public init(subcategories: AppCategoryRelationshipsSubcategories? = nil, parent: AppCategoryRelationshipsParent? = nil) {
        self.subcategories = subcategories
        self.parent = parent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subcategories
        case parent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(subcategories, forKey: .subcategories)
        try container.encodeIfPresent(parent, forKey: .parent)
    }
}
