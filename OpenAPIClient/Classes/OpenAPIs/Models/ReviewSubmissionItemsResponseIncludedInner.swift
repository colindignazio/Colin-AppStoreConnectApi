//
// ReviewSubmissionItemsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ReviewSubmissionItemsResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeAppCustomProductPageVersion(AppCustomProductPageVersion)
    case typeAppEvent(AppEvent)
    case typeAppStoreVersion(AppStoreVersion)
    case typeAppStoreVersionExperiment(AppStoreVersionExperiment)
    case typeAppStoreVersionExperimentV2(AppStoreVersionExperimentV2)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAppCustomProductPageVersion(let value):
            try container.encode(value)
        case .typeAppEvent(let value):
            try container.encode(value)
        case .typeAppStoreVersion(let value):
            try container.encode(value)
        case .typeAppStoreVersionExperiment(let value):
            try container.encode(value)
        case .typeAppStoreVersionExperimentV2(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AppCustomProductPageVersion.self) {
            self = .typeAppCustomProductPageVersion(value)
        } else if let value = try? container.decode(AppEvent.self) {
            self = .typeAppEvent(value)
        } else if let value = try? container.decode(AppStoreVersion.self) {
            self = .typeAppStoreVersion(value)
        } else if let value = try? container.decode(AppStoreVersionExperiment.self) {
            self = .typeAppStoreVersionExperiment(value)
        } else if let value = try? container.decode(AppStoreVersionExperimentV2.self) {
            self = .typeAppStoreVersionExperimentV2(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of ReviewSubmissionItemsResponseIncludedInner"))
        }
    }
}
