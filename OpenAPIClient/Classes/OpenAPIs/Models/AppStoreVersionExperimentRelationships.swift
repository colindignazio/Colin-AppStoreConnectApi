//
// AppStoreVersionExperimentRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionExperimentRelationships: Codable, JSONEncodable, Hashable {

    public var appStoreVersion: AppClipDefaultExperienceRelationshipsReleaseWithAppStoreVersion?
    public var appStoreVersionExperimentTreatments: AppStoreVersionExperimentV2RelationshipsAppStoreVersionExperimentTreatments?

    public init(appStoreVersion: AppClipDefaultExperienceRelationshipsReleaseWithAppStoreVersion? = nil, appStoreVersionExperimentTreatments: AppStoreVersionExperimentV2RelationshipsAppStoreVersionExperimentTreatments? = nil) {
        self.appStoreVersion = appStoreVersion
        self.appStoreVersionExperimentTreatments = appStoreVersionExperimentTreatments
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreVersion
        case appStoreVersionExperimentTreatments
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appStoreVersion, forKey: .appStoreVersion)
        try container.encodeIfPresent(appStoreVersionExperimentTreatments, forKey: .appStoreVersionExperimentTreatments)
    }
}
