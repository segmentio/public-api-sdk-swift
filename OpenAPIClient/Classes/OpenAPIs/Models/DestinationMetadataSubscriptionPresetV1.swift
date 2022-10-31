//
// DestinationMetadataSubscriptionPresetV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents a set of defaults for a Destination subscription. */
public struct DestinationMetadataSubscriptionPresetV1: Codable, JSONEncodable, Hashable {

    /** The unique identifier for the Destination Action to trigger. */
    public var actionId: String
    /** The name of the subscription. */
    public var name: String
    /** The default settings for action fields. */
    public var fields: [String: AnyCodable]
    /** FQL string that describes what events should trigger an action. See https://segment.com/docs/config-api/fql/ for more information regarding Segment's Filter Query Language (FQL). */
    public var trigger: String

    public init(actionId: String, name: String, fields: [String: AnyCodable], trigger: String) {
        self.actionId = actionId
        self.name = name
        self.fields = fields
        self.trigger = trigger
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case actionId
        case name
        case fields
        case trigger
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(actionId, forKey: .actionId)
        try container.encode(name, forKey: .name)
        try container.encode(fields, forKey: .fields)
        try container.encode(trigger, forKey: .trigger)
    }
}

