//
// CreateDestinationV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Creates a new Destination. */
public struct CreateDestinationV1Input: Codable, JSONEncodable, Hashable {

    /** The id of the Source to connect to this Destination instance.  Config API note: analogous to `parent`. */
    public var sourceId: String
    /** The id of the metadata to link to the new Destination. */
    public var metadataId: String
    /** Whether this Destination should receive data. */
    public var enabled: Bool?
    /** Defines the display name of the Destination.  Config API note: equal to `displayName`. */
    public var name: String?
    /** An object that contains settings for the Destination based on the \"required\" and \"advanced\" settings present in the Destination metadata.  Config API note: equal to `config`. */
    public var settings: [String: AnyCodable]

    public init(sourceId: String, metadataId: String, enabled: Bool? = nil, name: String? = nil, settings: [String: AnyCodable]) {
        self.sourceId = sourceId
        self.metadataId = metadataId
        self.enabled = enabled
        self.name = name
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sourceId
        case metadataId
        case enabled
        case name
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sourceId, forKey: .sourceId)
        try container.encode(metadataId, forKey: .metadataId)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(settings, forKey: .settings)
    }
}

