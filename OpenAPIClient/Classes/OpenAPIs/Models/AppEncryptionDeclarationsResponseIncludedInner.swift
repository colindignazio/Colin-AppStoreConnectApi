//
// AppEncryptionDeclarationsResponseIncludedInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum AppEncryptionDeclarationsResponseIncludedInner: Codable, JSONEncodable, Hashable {
    case typeApp(App)
    case typeAppEncryptionDeclarationDocument(AppEncryptionDeclarationDocument)
    case typeBuild(Build)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeApp(let value):
            try container.encode(value)
        case .typeAppEncryptionDeclarationDocument(let value):
            try container.encode(value)
        case .typeBuild(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(App.self) {
            self = .typeApp(value)
        } else if let value = try? container.decode(AppEncryptionDeclarationDocument.self) {
            self = .typeAppEncryptionDeclarationDocument(value)
        } else if let value = try? container.decode(Build.self) {
            self = .typeBuild(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AppEncryptionDeclarationsResponseIncludedInner"))
        }
    }
}

