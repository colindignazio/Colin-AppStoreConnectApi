//
// CapabilitySetting.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CapabilitySetting: Codable, JSONEncodable, Hashable {

    public enum Key: String, Codable, CaseIterable {
        case icloudVersion = "ICLOUD_VERSION"
        case dataProtectionPermissionLevel = "DATA_PROTECTION_PERMISSION_LEVEL"
        case appleIdAuthAppConsent = "APPLE_ID_AUTH_APP_CONSENT"
    }
    public enum AllowedInstances: String, Codable, CaseIterable {
        case entry = "ENTRY"
        case single = "SINGLE"
        case multiple = "MULTIPLE"
    }
    public var key: Key?
    public var name: String?
    public var description: String?
    public var enabledByDefault: Bool?
    public var visible: Bool?
    public var allowedInstances: AllowedInstances?
    public var minInstances: Int?
    public var options: [CapabilityOption]?

    public init(key: Key? = nil, name: String? = nil, description: String? = nil, enabledByDefault: Bool? = nil, visible: Bool? = nil, allowedInstances: AllowedInstances? = nil, minInstances: Int? = nil, options: [CapabilityOption]? = nil) {
        self.key = key
        self.name = name
        self.description = description
        self.enabledByDefault = enabledByDefault
        self.visible = visible
        self.allowedInstances = allowedInstances
        self.minInstances = minInstances
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case name
        case description
        case enabledByDefault
        case visible
        case allowedInstances
        case minInstances
        case options
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(enabledByDefault, forKey: .enabledByDefault)
        try container.encodeIfPresent(visible, forKey: .visible)
        try container.encodeIfPresent(allowedInstances, forKey: .allowedInstances)
        try container.encodeIfPresent(minInstances, forKey: .minInstances)
        try container.encodeIfPresent(options, forKey: .options)
    }
}

