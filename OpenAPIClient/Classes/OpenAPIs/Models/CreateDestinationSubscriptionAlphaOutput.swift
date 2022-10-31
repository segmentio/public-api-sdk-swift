//
// CreateDestinationSubscriptionAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns a newly created Destination subscription. */
public struct CreateDestinationSubscriptionAlphaOutput: Codable, JSONEncodable, Hashable {

    public var destinationSubscription: DestinationSubscription

    public init(destinationSubscription: DestinationSubscription) {
        self.destinationSubscription = destinationSubscription
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case destinationSubscription
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(destinationSubscription, forKey: .destinationSubscription)
    }
}

