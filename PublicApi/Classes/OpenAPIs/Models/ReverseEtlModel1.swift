//
// ReverseEtlModel1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The requested Model. */
public struct ReverseEtlModel1: Codable, JSONEncodable, Hashable {

    /** The id of the Model. */
    public var id: String
    /** The id for the attached Source. */
    public var sourceId: String
    /** A short, human-readable description of the Model. */
    public var name: String
    /** A longer, more descriptive explanation of the Model. */
    public var description: String
    /** Indicates whether the Model should have syncs enabled. When disabled, no syncs will be triggered, regardless of the enabled status of the attached destinations/subscriptions. */
    public var enabled: Bool
    /** The SQL query that will be executed to extract data from the connected Source. */
    public var query: String
    /** Indicates the column named in `query` that should be used to uniquely identify the extracted records. */
    public var queryIdentifierColumn: String

    public init(id: String, sourceId: String, name: String, description: String, enabled: Bool, query: String, queryIdentifierColumn: String) {
        self.id = id
        self.sourceId = sourceId
        self.name = name
        self.description = description
        self.enabled = enabled
        self.query = query
        self.queryIdentifierColumn = queryIdentifierColumn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case sourceId
        case name
        case description
        case enabled
        case query
        case queryIdentifierColumn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(sourceId, forKey: .sourceId)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(query, forKey: .query)
        try container.encode(queryIdentifierColumn, forKey: .queryIdentifierColumn)
    }
}

