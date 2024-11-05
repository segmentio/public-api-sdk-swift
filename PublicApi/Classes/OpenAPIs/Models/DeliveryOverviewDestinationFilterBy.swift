//
// DeliveryOverviewDestinationFilterBy.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The &#x60;DeliveryOverviewDestinationFilterBy&#x60; object is a map of the filterable fields and their values. */
public struct DeliveryOverviewDestinationFilterBy: Codable, JSONEncodable, Hashable {

    /** A list of strings of discard reasons.  See [Discard Record Documentation](https://segment.com/docs/connections/delivery-overview/#troubleshooting) for valid error codes. */
    public var discardReason: [String]?
    /** A list of strings of event names. */
    public var eventName: [String]?
    /** A list of strings of event types. Valid options are: `alias`, `group`, `identify`, `page`, `screen`, and `track`. */
    public var eventType: [String]?
    /** A list of strings of app versions. */
    public var appVersion: [String]?
    /** A list of strings of subscription IDs for Actions Destinations. */
    public var subscriptionId: [String]?
    /** A list of strings of event context IDs from a Linked Audience mapping/activation. */
    public var activationId: [String]?
    /** A list of strings of audienceIDs for a Linked Audience. */
    public var audienceId: [String]?
    /** A list of strings of spaceIDs for a Linked Audience. */
    public var spaceId: [String]?

    public init(discardReason: [String]? = nil, eventName: [String]? = nil, eventType: [String]? = nil, appVersion: [String]? = nil, subscriptionId: [String]? = nil, activationId: [String]? = nil, audienceId: [String]? = nil, spaceId: [String]? = nil) {
        self.discardReason = discardReason
        self.eventName = eventName
        self.eventType = eventType
        self.appVersion = appVersion
        self.subscriptionId = subscriptionId
        self.activationId = activationId
        self.audienceId = audienceId
        self.spaceId = spaceId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case discardReason
        case eventName
        case eventType
        case appVersion
        case subscriptionId
        case activationId
        case audienceId
        case spaceId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(discardReason, forKey: .discardReason)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encodeIfPresent(eventType, forKey: .eventType)
        try container.encodeIfPresent(appVersion, forKey: .appVersion)
        try container.encodeIfPresent(subscriptionId, forKey: .subscriptionId)
        try container.encodeIfPresent(activationId, forKey: .activationId)
        try container.encodeIfPresent(audienceId, forKey: .audienceId)
        try container.encodeIfPresent(spaceId, forKey: .spaceId)
    }
}

