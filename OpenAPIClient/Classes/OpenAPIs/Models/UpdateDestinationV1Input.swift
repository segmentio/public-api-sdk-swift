//
// UpdateDestinationV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Updates a single Destination by its id. */
public struct UpdateDestinationV1Input: Codable, JSONEncodable, Hashable {

    /** Defines the display name of the Destination.  Config API note: equal to `displayName`. */
    public var name: String?
    /** Whether this Destination should receive data. */
    public var enabled: Bool?
    /** An optional object that contains settings for the Destination based on the \"required\" and \"advanced\" settings present in the Destination metadata.  Config API note: equal to `config`. */
    public var settings: [String: AnyCodable]?

    public init(name: String? = nil, enabled: Bool? = nil, settings: [String: AnyCodable]? = nil) {
        self.name = name
        self.enabled = enabled
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case enabled
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(settings, forKey: .settings)
    }
}

