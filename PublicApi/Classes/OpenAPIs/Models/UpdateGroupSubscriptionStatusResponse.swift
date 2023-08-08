//
// UpdateGroupSubscriptionStatusResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UpdateGroupSubscriptionStatusResponse: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case didNotSubscribe = "DID_NOT_SUBSCRIBE"
        case subscribed = "SUBSCRIBED"
        case unsubscribed = "UNSUBSCRIBED"
    }
    /** Name of the group. */
    public var name: String
    /** The user subscribed, unsubscribed, or on initial status. */
    public var status: Status
    /** The group id. */
    public var id: String

    public init(name: String, status: Status, id: String) {
        self.name = name
        self.status = status
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case status
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(status, forKey: .status)
        try container.encode(id, forKey: .id)
    }
}
