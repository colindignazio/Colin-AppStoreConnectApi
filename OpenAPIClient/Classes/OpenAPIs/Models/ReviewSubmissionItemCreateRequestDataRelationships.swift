//
// ReviewSubmissionItemCreateRequestDataRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReviewSubmissionItemCreateRequestDataRelationships: Codable, JSONEncodable, Hashable {

    public var reviewSubmission: ReviewSubmissionItemCreateRequestDataRelationshipsReviewSubmission
    public var appStoreVersion: AppClipDefaultExperienceCreateRequestDataRelationshipsReleaseWithAppStoreVersion?
    public var appCustomProductPageVersion: AppCustomProductPageLocalizationInlineCreateRelationshipsAppCustomProductPageVersion?
    public var appStoreVersionExperiment: AppStoreVersionExperimentTreatmentCreateRequestDataRelationshipsAppStoreVersionExperimentV2?
    public var appStoreVersionExperimentV2: AppStoreVersionExperimentTreatmentCreateRequestDataRelationshipsAppStoreVersionExperimentV2?
    public var appEvent: ReviewSubmissionItemCreateRequestDataRelationshipsAppEvent?

    public init(reviewSubmission: ReviewSubmissionItemCreateRequestDataRelationshipsReviewSubmission, appStoreVersion: AppClipDefaultExperienceCreateRequestDataRelationshipsReleaseWithAppStoreVersion? = nil, appCustomProductPageVersion: AppCustomProductPageLocalizationInlineCreateRelationshipsAppCustomProductPageVersion? = nil, appStoreVersionExperiment: AppStoreVersionExperimentTreatmentCreateRequestDataRelationshipsAppStoreVersionExperimentV2? = nil, appStoreVersionExperimentV2: AppStoreVersionExperimentTreatmentCreateRequestDataRelationshipsAppStoreVersionExperimentV2? = nil, appEvent: ReviewSubmissionItemCreateRequestDataRelationshipsAppEvent? = nil) {
        self.reviewSubmission = reviewSubmission
        self.appStoreVersion = appStoreVersion
        self.appCustomProductPageVersion = appCustomProductPageVersion
        self.appStoreVersionExperiment = appStoreVersionExperiment
        self.appStoreVersionExperimentV2 = appStoreVersionExperimentV2
        self.appEvent = appEvent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reviewSubmission
        case appStoreVersion
        case appCustomProductPageVersion
        case appStoreVersionExperiment
        case appStoreVersionExperimentV2
        case appEvent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(reviewSubmission, forKey: .reviewSubmission)
        try container.encodeIfPresent(appStoreVersion, forKey: .appStoreVersion)
        try container.encodeIfPresent(appCustomProductPageVersion, forKey: .appCustomProductPageVersion)
        try container.encodeIfPresent(appStoreVersionExperiment, forKey: .appStoreVersionExperiment)
        try container.encodeIfPresent(appStoreVersionExperimentV2, forKey: .appStoreVersionExperimentV2)
        try container.encodeIfPresent(appEvent, forKey: .appEvent)
    }
}

