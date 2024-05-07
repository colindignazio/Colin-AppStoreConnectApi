//
// DeviceAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DeviceAttributes: Codable, JSONEncodable, Hashable {

    public enum DeviceClass: String, Codable, CaseIterable {
        case appleWatch = "APPLE_WATCH"
        case ipad = "IPAD"
        case iphone = "IPHONE"
        case ipod = "IPOD"
        case appleTv = "APPLE_TV"
        case mac = "MAC"
    }
    public enum Status: String, Codable, CaseIterable {
        case enabled = "ENABLED"
        case disabled = "DISABLED"
    }
    public var name: String?
    public var platform: BundleIdPlatform?
    public var udid: String?
    public var deviceClass: DeviceClass?
    public var status: Status?
    public var model: String?
    public var addedDate: Date?

    public init(name: String? = nil, platform: BundleIdPlatform? = nil, udid: String? = nil, deviceClass: DeviceClass? = nil, status: Status? = nil, model: String? = nil, addedDate: Date? = nil) {
        self.name = name
        self.platform = platform
        self.udid = udid
        self.deviceClass = deviceClass
        self.status = status
        self.model = model
        self.addedDate = addedDate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case platform
        case udid
        case deviceClass
        case status
        case model
        case addedDate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(platform, forKey: .platform)
        try container.encodeIfPresent(udid, forKey: .udid)
        try container.encodeIfPresent(deviceClass, forKey: .deviceClass)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(model, forKey: .model)
        try container.encodeIfPresent(addedDate, forKey: .addedDate)
    }
}

