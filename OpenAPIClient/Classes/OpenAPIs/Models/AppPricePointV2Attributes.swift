//
// AppPricePointV2Attributes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppPricePointV2Attributes: Codable, JSONEncodable, Hashable {

    public var customerPrice: String?
    public var proceeds: String?

    public init(customerPrice: String? = nil, proceeds: String? = nil) {
        self.customerPrice = customerPrice
        self.proceeds = proceeds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customerPrice
        case proceeds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(customerPrice, forKey: .customerPrice)
        try container.encodeIfPresent(proceeds, forKey: .proceeds)
    }
}

