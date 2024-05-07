//
// UserInvitationAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserInvitationAttributes: Codable, JSONEncodable, Hashable {

    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var expirationDate: Date?
    public var roles: [UserRole]?
    public var allAppsVisible: Bool?
    public var provisioningAllowed: Bool?

    public init(email: String? = nil, firstName: String? = nil, lastName: String? = nil, expirationDate: Date? = nil, roles: [UserRole]? = nil, allAppsVisible: Bool? = nil, provisioningAllowed: Bool? = nil) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.expirationDate = expirationDate
        self.roles = roles
        self.allAppsVisible = allAppsVisible
        self.provisioningAllowed = provisioningAllowed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case firstName
        case lastName
        case expirationDate
        case roles
        case allAppsVisible
        case provisioningAllowed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(firstName, forKey: .firstName)
        try container.encodeIfPresent(lastName, forKey: .lastName)
        try container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        try container.encodeIfPresent(roles, forKey: .roles)
        try container.encodeIfPresent(allAppsVisible, forKey: .allAppsVisible)
        try container.encodeIfPresent(provisioningAllowed, forKey: .provisioningAllowed)
    }
}
