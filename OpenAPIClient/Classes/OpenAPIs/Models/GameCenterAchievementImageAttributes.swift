//
// GameCenterAchievementImageAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GameCenterAchievementImageAttributes: Codable, JSONEncodable, Hashable {

    public var fileSize: Int?
    public var fileName: String?
    public var imageAsset: ImageAsset?
    public var uploadOperations: [UploadOperation]?
    public var assetDeliveryState: AppMediaAssetState?

    public init(fileSize: Int? = nil, fileName: String? = nil, imageAsset: ImageAsset? = nil, uploadOperations: [UploadOperation]? = nil, assetDeliveryState: AppMediaAssetState? = nil) {
        self.fileSize = fileSize
        self.fileName = fileName
        self.imageAsset = imageAsset
        self.uploadOperations = uploadOperations
        self.assetDeliveryState = assetDeliveryState
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileSize
        case fileName
        case imageAsset
        case uploadOperations
        case assetDeliveryState
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fileSize, forKey: .fileSize)
        try container.encodeIfPresent(fileName, forKey: .fileName)
        try container.encodeIfPresent(imageAsset, forKey: .imageAsset)
        try container.encodeIfPresent(uploadOperations, forKey: .uploadOperations)
        try container.encodeIfPresent(assetDeliveryState, forKey: .assetDeliveryState)
    }
}

