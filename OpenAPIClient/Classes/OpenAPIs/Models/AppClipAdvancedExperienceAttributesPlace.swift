//
// AppClipAdvancedExperienceAttributesPlace.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppClipAdvancedExperienceAttributesPlace: Codable, JSONEncodable, Hashable {

    public enum MapAction: String, Codable, CaseIterable {
        case buyTickets = "BUY_TICKETS"
        case viewAvailability = "VIEW_AVAILABILITY"
        case viewPricing = "VIEW_PRICING"
        case hotelBookRoom = "HOTEL_BOOK_ROOM"
        case parkingReserveParking = "PARKING_RESERVE_PARKING"
        case restaurantJoinWaitlist = "RESTAURANT_JOIN_WAITLIST"
        case restaurantOrderDelivery = "RESTAURANT_ORDER_DELIVERY"
        case restaurantOrderFood = "RESTAURANT_ORDER_FOOD"
        case restaurantOrderTakeout = "RESTAURANT_ORDER_TAKEOUT"
        case restaurantReservation = "RESTAURANT_RESERVATION"
        case scheduleAppointment = "SCHEDULE_APPOINTMENT"
        case restaurantViewMenu = "RESTAURANT_VIEW_MENU"
        case theaterNowPlaying = "THEATER_NOW_PLAYING"
    }
    public enum Relationship: String, Codable, CaseIterable {
        case owner = "OWNER"
        case authorized = "AUTHORIZED"
        case other = "OTHER"
    }
    public var placeId: String?
    public var names: [String]?
    public var mainAddress: AppClipAdvancedExperienceAttributesPlaceMainAddress?
    public var displayPoint: AppClipAdvancedExperienceAttributesPlaceDisplayPoint?
    public var mapAction: MapAction?
    public var relationship: Relationship?
    public var phoneNumber: AppClipAdvancedExperienceAttributesPlacePhoneNumber?
    public var homePage: String?
    public var categories: [String]?

    public init(placeId: String? = nil, names: [String]? = nil, mainAddress: AppClipAdvancedExperienceAttributesPlaceMainAddress? = nil, displayPoint: AppClipAdvancedExperienceAttributesPlaceDisplayPoint? = nil, mapAction: MapAction? = nil, relationship: Relationship? = nil, phoneNumber: AppClipAdvancedExperienceAttributesPlacePhoneNumber? = nil, homePage: String? = nil, categories: [String]? = nil) {
        self.placeId = placeId
        self.names = names
        self.mainAddress = mainAddress
        self.displayPoint = displayPoint
        self.mapAction = mapAction
        self.relationship = relationship
        self.phoneNumber = phoneNumber
        self.homePage = homePage
        self.categories = categories
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case placeId
        case names
        case mainAddress
        case displayPoint
        case mapAction
        case relationship
        case phoneNumber
        case homePage
        case categories
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(placeId, forKey: .placeId)
        try container.encodeIfPresent(names, forKey: .names)
        try container.encodeIfPresent(mainAddress, forKey: .mainAddress)
        try container.encodeIfPresent(displayPoint, forKey: .displayPoint)
        try container.encodeIfPresent(mapAction, forKey: .mapAction)
        try container.encodeIfPresent(relationship, forKey: .relationship)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(homePage, forKey: .homePage)
        try container.encodeIfPresent(categories, forKey: .categories)
    }
}

