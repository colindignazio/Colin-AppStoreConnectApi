//
// CiActionType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum CiActionType: String, Codable, CaseIterable {
    case build = "BUILD"
    case analyze = "ANALYZE"
    case test = "TEST"
    case archive = "ARCHIVE"
}
