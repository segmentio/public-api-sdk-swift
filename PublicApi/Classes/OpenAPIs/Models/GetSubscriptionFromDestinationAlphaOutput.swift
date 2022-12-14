//
// GetSubscriptionFromDestinationAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns a subscription for a given subscription id. */
public struct GetSubscriptionFromDestinationAlphaOutput: Codable, JSONEncodable, Hashable {

    public var subscription: Subscription

    public init(subscription: Subscription) {
        self.subscription = subscription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case subscription
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(subscription, forKey: .subscription)
    }
}

