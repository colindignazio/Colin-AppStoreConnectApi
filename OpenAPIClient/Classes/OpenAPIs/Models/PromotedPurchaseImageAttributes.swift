//
// PromotedPurchaseImageAttributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PromotedPurchaseImageAttributes: Codable, JSONEncodable, Hashable {

    public enum State: String, Codable, CaseIterable {
        case awaitingUpload = "AWAITING_UPLOAD"
        case uploadComplete = "UPLOAD_COMPLETE"
        case failed = "FAILED"
        case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
        case waitingForReview = "WAITING_FOR_REVIEW"
        case approved = "APPROVED"
        case rejected = "REJECTED"
    }
    public var fileSize: Int?
    public var fileName: String?
    public var sourceFileChecksum: String?
    public var assetToken: String?
    public var imageAsset: ImageAsset?
    public var assetType: String?
    public var uploadOperations: [UploadOperation]?
    public var state: State?

    public init(fileSize: Int? = nil, fileName: String? = nil, sourceFileChecksum: String? = nil, assetToken: String? = nil, imageAsset: ImageAsset? = nil, assetType: String? = nil, uploadOperations: [UploadOperation]? = nil, state: State? = nil) {
        self.fileSize = fileSize
        self.fileName = fileName
        self.sourceFileChecksum = sourceFileChecksum
        self.assetToken = assetToken
        self.imageAsset = imageAsset
        self.assetType = assetType
        self.uploadOperations = uploadOperations
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case fileSize
        case fileName
        case sourceFileChecksum
        case assetToken
        case imageAsset
        case assetType
        case uploadOperations
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(fileSize, forKey: .fileSize)
        try container.encodeIfPresent(fileName, forKey: .fileName)
        try container.encodeIfPresent(sourceFileChecksum, forKey: .sourceFileChecksum)
        try container.encodeIfPresent(assetToken, forKey: .assetToken)
        try container.encodeIfPresent(imageAsset, forKey: .imageAsset)
        try container.encodeIfPresent(assetType, forKey: .assetType)
        try container.encodeIfPresent(uploadOperations, forKey: .uploadOperations)
        try container.encodeIfPresent(state, forKey: .state)
    }
}

