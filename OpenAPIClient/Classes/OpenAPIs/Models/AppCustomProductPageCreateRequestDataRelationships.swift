//
// AppCustomProductPageCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppCustomProductPageCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp
    public var appCustomProductPageVersions: AppCustomProductPageCreateRequestDataRelationshipsAppCustomProductPageVersions?
    public var appStoreVersionTemplate: AppClipDefaultExperienceCreateRequestDataRelationshipsReleaseWithAppStoreVersion?
    public var customProductPageTemplate: AppCustomProductPageVersionInlineCreateRelationshipsAppCustomProductPage?

    public init(app: AlternativeDistributionKeyCreateRequestDataRelationshipsApp, appCustomProductPageVersions: AppCustomProductPageCreateRequestDataRelationshipsAppCustomProductPageVersions? = nil, appStoreVersionTemplate: AppClipDefaultExperienceCreateRequestDataRelationshipsReleaseWithAppStoreVersion? = nil, customProductPageTemplate: AppCustomProductPageVersionInlineCreateRelationshipsAppCustomProductPage? = nil) {
        self.app = app
        self.appCustomProductPageVersions = appCustomProductPageVersions
        self.appStoreVersionTemplate = appStoreVersionTemplate
        self.customProductPageTemplate = customProductPageTemplate
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case app
        case appCustomProductPageVersions
        case appStoreVersionTemplate
        case customProductPageTemplate
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(app, forKey: .app)
        try container.encodeIfPresent(appCustomProductPageVersions, forKey: .appCustomProductPageVersions)
        try container.encodeIfPresent(appStoreVersionTemplate, forKey: .appStoreVersionTemplate)
        try container.encodeIfPresent(customProductPageTemplate, forKey: .customProductPageTemplate)
    }
}

