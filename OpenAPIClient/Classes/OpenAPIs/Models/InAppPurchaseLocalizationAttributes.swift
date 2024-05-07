//
// InAppPurchaseLocalizationAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InAppPurchaseLocalizationAttributes: Codable, JSONEncodable, Hashable {

    public enum State: String, Codable, CaseIterable {
        case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
        case waitingForReview = "WAITING_FOR_REVIEW"
        case approved = "APPROVED"
        case rejected = "REJECTED"
    }
    public var name: String?
    public var locale: String?
    public var description: String?
    public var state: State?

    public init(name: String? = nil, locale: String? = nil, description: String? = nil, state: State? = nil) {
        self.name = name
        self.locale = locale
        self.description = description
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case locale
        case description
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(locale, forKey: .locale)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

