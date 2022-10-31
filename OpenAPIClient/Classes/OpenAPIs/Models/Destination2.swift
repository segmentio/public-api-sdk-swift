//
// Destination2.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The created Destination. */
public struct Destination2: Codable, JSONEncodable, Hashable {

    /** The unique identifier of this instance of a Destination.  Config API note: analogous to `name`. */
    public var id: String
    /** The name of this instance of a Destination.  Config API note: equal to `displayName`. */
    public var name: String?
    /** Whether this instance of a Destination receives data. */
    public var enabled: Bool
    public var metadata: Metadata
    /** The id of a Source connected to this instance of a Destination.  Config API note: analogous to `parent`. */
    public var sourceId: String
    /** The collection of settings associated with a Destination.  Config API note: equal to `config`. */
    public var settings: [String: AnyCodable]

    public init(id: String, name: String? = nil, enabled: Bool, metadata: Metadata, sourceId: String, settings: [String: AnyCodable]) {
        self.id = id
        self.name = name
        self.enabled = enabled
        self.metadata = metadata
        self.sourceId = sourceId
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case enabled
        case metadata
        case sourceId
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(metadata, forKey: .metadata)
        try container.encode(sourceId, forKey: .sourceId)
        try container.encode(settings, forKey: .settings)
    }
}

