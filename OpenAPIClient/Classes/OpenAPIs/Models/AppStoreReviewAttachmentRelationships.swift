//
// AppStoreReviewAttachmentRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreReviewAttachmentRelationships: Codable, JSONEncodable, Hashable {

    public var appStoreReviewDetail: AppStoreReviewAttachmentRelationshipsAppStoreReviewDetail?

    public init(appStoreReviewDetail: AppStoreReviewAttachmentRelationshipsAppStoreReviewDetail? = nil) {
        self.appStoreReviewDetail = appStoreReviewDetail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreReviewDetail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appStoreReviewDetail, forKey: .appStoreReviewDetail)
    }
}

