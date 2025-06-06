//
// ComputedTrait.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The computed trait summary output. */
public struct ComputedTrait: Codable, JSONEncodable, Hashable {

    /** Computed trait id. */
    public var id: String
    /** Space id for the computed trait. */
    public var spaceId: String
    /** Name of the computed trait. */
    public var name: String
    /** Description of the computed trait. */
    public var description: String?
    /** Key for the computed trait. */
    public var key: String
    /** Enabled/disabled status for the computed trait. */
    public var enabled: Bool
    public var definition: Definition5?
    /** Status for the computed trait.  Possible values: Backfilling, Computing, Failed, Live, Awaiting Destinations, Disabled. */
    public var status: String?
    /** User id who created the computed trait. */
    public var createdBy: String
    /** User id who last updated the computed trait. */
    public var updatedBy: String
    /** The timestamp of the computed trait's creation. */
    public var createdAt: String
    /** The timestamp of the computed trait's last change. */
    public var updatedAt: String
    public var options: Options4?

    public init(id: String, spaceId: String, name: String, description: String? = nil, key: String, enabled: Bool, definition: Definition5?, status: String? = nil, createdBy: String, updatedBy: String, createdAt: String, updatedAt: String, options: Options4? = nil) {
        self.id = id
        self.spaceId = spaceId
        self.name = name
        self.description = description
        self.key = key
        self.enabled = enabled
        self.definition = definition
        self.status = status
        self.createdBy = createdBy
        self.updatedBy = updatedBy
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case spaceId
        case name
        case description
        case key
        case enabled
        case definition
        case status
        case createdBy
        case updatedBy
        case createdAt
        case updatedAt
        case options
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(spaceId, forKey: .spaceId)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(key, forKey: .key)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(definition, forKey: .definition)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encode(createdBy, forKey: .createdBy)
        try container.encode(updatedBy, forKey: .updatedBy)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(options, forKey: .options)
    }
}

