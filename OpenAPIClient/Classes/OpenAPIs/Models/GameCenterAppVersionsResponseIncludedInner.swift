//
// GameCenterAppVersionsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum GameCenterAppVersionsResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeAppStoreVersion(AppStoreVersion)
    case typeGameCenterAppVersion(GameCenterAppVersion)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAppStoreVersion(let value):
            try container.encode(value)
        case .typeGameCenterAppVersion(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AppStoreVersion.self) {
            self = .typeAppStoreVersion(value)
        } else if let value = try? container.decode(GameCenterAppVersion.self) {
            self = .typeGameCenterAppVersion(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of GameCenterAppVersionsResponseIncludedInner"))
        }
    }
}

