//
// AppInfoAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppInfoAttributes: Codable, JSONEncodable, Hashable {

    public enum State: String, Codable, CaseIterable {
        case accepted = "ACCEPTED"
        case developerRejected = "DEVELOPER_REJECTED"
        case inReview = "IN_REVIEW"
        case pendingRelease = "PENDING_RELEASE"
        case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
        case readyForDistribution = "READY_FOR_DISTRIBUTION"
        case readyForReview = "READY_FOR_REVIEW"
        case rejected = "REJECTED"
        case replacedWithNewInfo = "REPLACED_WITH_NEW_INFO"
        case waitingForReview = "WAITING_FOR_REVIEW"
    }
    public enum BrazilAgeRatingV2: String, Codable, CaseIterable {
        case selfRatedL = "SELF_RATED_L"
        case selfRatedTen = "SELF_RATED_TEN"
        case selfRatedTwelve = "SELF_RATED_TWELVE"
        case selfRatedFourteen = "SELF_RATED_FOURTEEN"
        case selfRatedSixteen = "SELF_RATED_SIXTEEN"
        case selfRatedEighteen = "SELF_RATED_EIGHTEEN"
        case officialL = "OFFICIAL_L"
        case officialTen = "OFFICIAL_TEN"
        case officialTwelve = "OFFICIAL_TWELVE"
        case officialFourteen = "OFFICIAL_FOURTEEN"
        case officialSixteen = "OFFICIAL_SIXTEEN"
        case officialEighteen = "OFFICIAL_EIGHTEEN"
    }
    public var appStoreState: AppStoreVersionState?
    public var state: State?
    public var appStoreAgeRating: AppStoreAgeRating?
    public var brazilAgeRating: BrazilAgeRating?
    public var brazilAgeRatingV2: BrazilAgeRatingV2?
    public var kidsAgeBand: KidsAgeBand?

    public init(appStoreState: AppStoreVersionState? = nil, state: State? = nil, appStoreAgeRating: AppStoreAgeRating? = nil, brazilAgeRating: BrazilAgeRating? = nil, brazilAgeRatingV2: BrazilAgeRatingV2? = nil, kidsAgeBand: KidsAgeBand? = nil) {
        self.appStoreState = appStoreState
        self.state = state
        self.appStoreAgeRating = appStoreAgeRating
        self.brazilAgeRating = brazilAgeRating
        self.brazilAgeRatingV2 = brazilAgeRatingV2
        self.kidsAgeBand = kidsAgeBand
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case appStoreState
        case state
        case appStoreAgeRating
        case brazilAgeRating
        case brazilAgeRatingV2
        case kidsAgeBand
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(appStoreState, forKey: .appStoreState)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(appStoreAgeRating, forKey: .appStoreAgeRating)
        try container.encodeIfPresent(brazilAgeRating, forKey: .brazilAgeRating)
        try container.encodeIfPresent(brazilAgeRatingV2, forKey: .brazilAgeRatingV2)
        try container.encodeIfPresent(kidsAgeBand, forKey: .kidsAgeBand)
    }
}

