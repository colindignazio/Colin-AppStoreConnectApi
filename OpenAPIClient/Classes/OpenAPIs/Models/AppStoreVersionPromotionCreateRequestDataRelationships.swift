//
// AppStoreVersionPromotionCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreVersionPromotionCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var appStoreVersion: AlternativeDistributionPackageCreateRequestDataRelationshipsAppStoreVersion
    public var appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatmentLocalizationCreateRequestDataRelationshipsAppStoreVersionExperimentTreatment

    public init(appStoreVersion: AlternativeDistributionPackageCreateRequestDataRelationshipsAppStoreVersion, appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatmentLocalizationCreateRequestDataRelationshipsAppStoreVersionExperimentTreatment) {
        self.appStoreVersion = appStoreVersion
        self.appStoreVersionExperimentTreatment = appStoreVersionExperimentTreatment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreVersion
        case appStoreVersionExperimentTreatment
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(appStoreVersion, forKey: .appStoreVersion)
        try container.encode(appStoreVersionExperimentTreatment, forKey: .appStoreVersionExperimentTreatment)
    }
}
