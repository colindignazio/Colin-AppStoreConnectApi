//
// AppStoreReviewDetailResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum AppStoreReviewDetailResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeAppStoreReviewAttachment(AppStoreReviewAttachment)
    case typeAppStoreVersion(AppStoreVersion)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAppStoreReviewAttachment(let value):
            try container.encode(value)
        case .typeAppStoreVersion(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AppStoreReviewAttachment.self) {
            self = .typeAppStoreReviewAttachment(value)
        } else if let value = try? container.decode(AppStoreVersion.self) {
            self = .typeAppStoreVersion(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AppStoreReviewDetailResponseIncludedInner"))
        }
    }
}
