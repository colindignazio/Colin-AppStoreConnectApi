//
// AppMediaAssetState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppMediaAssetState: Codable, JSONEncodable, Hashable {

    public enum State: String, Codable, CaseIterable {
        case awaitingUpload = "AWAITING_UPLOAD"
        case uploadComplete = "UPLOAD_COMPLETE"
        case complete = "COMPLETE"
        case failed = "FAILED"
    }
    public var errors: [AppMediaStateError]?
    public var warnings: [AppMediaStateError]?
    public var state: State?

    public init(errors: [AppMediaStateError]? = nil, warnings: [AppMediaStateError]? = nil, state: State? = nil) {
        self.errors = errors
        self.warnings = warnings
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case errors
        case warnings
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(errors, forKey: .errors)
        try container.encodeIfPresent(warnings, forKey: .warnings)
        try container.encodeIfPresent(state, forKey: .state)
    }
}
