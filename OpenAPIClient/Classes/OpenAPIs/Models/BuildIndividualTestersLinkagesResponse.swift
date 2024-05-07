//
// BuildIndividualTestersLinkagesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BuildIndividualTestersLinkagesResponse: Codable, JSONEncodable, Hashable {

    public var data: [BetaGroupRelationshipsBetaTestersDataInner]
    public var links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [BetaGroupRelationshipsBetaTestersDataInner], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.links = links
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case links
        case meta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(links, forKey: .links)
        try container.encodeIfPresent(meta, forKey: .meta)
    }
}

