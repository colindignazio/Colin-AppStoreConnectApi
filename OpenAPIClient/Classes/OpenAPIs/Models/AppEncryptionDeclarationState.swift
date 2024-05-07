//
// AppEncryptionDeclarationState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum AppEncryptionDeclarationState: String, Codable, CaseIterable {
    case created = "CREATED"
    case inReview = "IN_REVIEW"
    case approved = "APPROVED"
    case rejected = "REJECTED"
    case invalid = "INVALID"
    case expired = "EXPIRED"
}