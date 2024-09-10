//
// Filter4.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Filter4: Codable, JSONEncodable, Hashable {

    /** The newly created filter id. */
    public var id: String
    /** The Workspace id to create the filter. */
    public var workspaceId: String
    /** The Integration id of the resource. */
    public var integrationId: String
    /** Whether the filter is enabled. */
    public var enabled: Bool?
    /** Whether the event is dropped. */
    public var drop: Bool?
    /** The name of the filter. */
    public var name: String?
    /** The description of the filter. */
    public var description: String?
    /** The \"if\" statement for a filter. */
    public var _if: String?
    /** Describes the properties to be dropped on events that match the \"if\" statement. */
    public var propertyDrops: [String]?
    /** Describes the properties allowed on events that match the \"if\" statement. */
    public var allowProperties: [String]?

    public init(id: String, workspaceId: String, integrationId: String, enabled: Bool? = nil, drop: Bool? = nil, name: String? = nil, description: String? = nil, _if: String? = nil, propertyDrops: [String]? = nil, allowProperties: [String]? = nil) {
        self.id = id
        self.workspaceId = workspaceId
        self.integrationId = integrationId
        self.enabled = enabled
        self.drop = drop
        self.name = name
        self.description = description
        self._if = _if
        self.propertyDrops = propertyDrops
        self.allowProperties = allowProperties
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case workspaceId
        case integrationId
        case enabled
        case drop
        case name
        case description
        case _if = "if"
        case propertyDrops
        case allowProperties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(workspaceId, forKey: .workspaceId)
        try container.encode(integrationId, forKey: .integrationId)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(drop, forKey: .drop)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(_if, forKey: ._if)
        try container.encodeIfPresent(propertyDrops, forKey: .propertyDrops)
        try container.encodeIfPresent(allowProperties, forKey: .allowProperties)
    }
}

