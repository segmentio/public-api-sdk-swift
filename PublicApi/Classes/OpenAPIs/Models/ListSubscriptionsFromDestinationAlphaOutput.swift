//
// ListSubscriptionsFromDestinationAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Output for ListDestinationSubscriptionsAlpha. */
public struct ListSubscriptionsFromDestinationAlphaOutput: Codable, JSONEncodable, Hashable {

    /** A list of Destination subscriptions. */
    public var subscriptions: [DestinationSubscription]
    public var pagination: Pagination1?

    public init(subscriptions: [DestinationSubscription], pagination: Pagination1? = nil) {
        self.subscriptions = subscriptions
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subscriptions
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(subscriptions, forKey: .subscriptions)
        try container.encodeIfPresent(pagination, forKey: .pagination)
    }
}

