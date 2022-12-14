//
// IntegrationOptionBeta.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Describes an Integration option field required to set up a Segment Integration such as Sources, Destinations, or warehouses. */
public struct IntegrationOptionBeta: Codable, JSONEncodable, Hashable {

    /** The name identifying this option in the context of a Segment Integration. */
    public var name: String
    /** Defines the type for this option in the schema. Types are most commonly strings, but may also represent other primitive types, such as booleans, and numbers, as well as complex types, such as objects and arrays. */
    public var type: String
    /** Whether this is a required option when setting up the Integration. */
    public var _required: Bool
    /** An optional short text description of the field. */
    public var description: String?
    /** An optional default value for the field. */
    public var defaultValue: AnyCodable?
    /** An optional label for this field. */
    public var label: String?

    public init(name: String, type: String, _required: Bool, description: String? = nil, defaultValue: AnyCodable? = nil, label: String? = nil) {
        self.name = name
        self.type = type
        self._required = _required
        self.description = description
        self.defaultValue = defaultValue
        self.label = label
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case type
        case _required = "required"
        case description
        case defaultValue
        case label
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(_required, forKey: ._required)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(defaultValue, forKey: .defaultValue)
        try container.encodeIfPresent(label, forKey: .label)
    }
}

