//
// CiIssueAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CiIssueAttributes: Codable, JSONEncodable, Hashable {

    public enum IssueType: String, Codable, CaseIterable {
        case analyzerWarning = "ANALYZER_WARNING"
        case error = "ERROR"
        case testFailure = "TEST_FAILURE"
        case warning = "WARNING"
    }
    public var issueType: IssueType?
    public var message: String?
    public var fileSource: FileLocation?
    public var category: String?

    public init(issueType: IssueType? = nil, message: String? = nil, fileSource: FileLocation? = nil, category: String? = nil) {
        self.issueType = issueType
        self.message = message
        self.fileSource = fileSource
        self.category = category
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case issueType
        case message
        case fileSource
        case category
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(issueType, forKey: .issueType)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(fileSource, forKey: .fileSource)
        try container.encodeIfPresent(category, forKey: .category)
    }
}

