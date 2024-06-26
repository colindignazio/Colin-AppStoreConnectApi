//
// GameCenterAchievementRelationships.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterAchievementRelationships: Codable, JSONEncodable, Hashable {

    public var gameCenterDetail: AppRelationshipsGameCenterDetail?
    public var gameCenterGroup: GameCenterAchievementRelationshipsGameCenterGroup?
    public var groupAchievement: GameCenterAchievementLocalizationRelationshipsGameCenterAchievement?
    public var localizations: GameCenterAchievementRelationshipsLocalizations?
    public var releases: GameCenterAchievementRelationshipsReleases?

    public init(gameCenterDetail: AppRelationshipsGameCenterDetail? = nil, gameCenterGroup: GameCenterAchievementRelationshipsGameCenterGroup? = nil, groupAchievement: GameCenterAchievementLocalizationRelationshipsGameCenterAchievement? = nil, localizations: GameCenterAchievementRelationshipsLocalizations? = nil, releases: GameCenterAchievementRelationshipsReleases? = nil) {
        self.gameCenterDetail = gameCenterDetail
        self.gameCenterGroup = gameCenterGroup
        self.groupAchievement = groupAchievement
        self.localizations = localizations
        self.releases = releases
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case gameCenterDetail
        case gameCenterGroup
        case groupAchievement
        case localizations
        case releases
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(gameCenterDetail, forKey: .gameCenterDetail)
        try container.encodeIfPresent(gameCenterGroup, forKey: .gameCenterGroup)
        try container.encodeIfPresent(groupAchievement, forKey: .groupAchievement)
        try container.encodeIfPresent(localizations, forKey: .localizations)
        try container.encodeIfPresent(releases, forKey: .releases)
    }
}

