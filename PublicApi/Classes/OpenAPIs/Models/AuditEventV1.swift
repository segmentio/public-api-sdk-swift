//
// AuditEventV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents an Audit Trail event. */
public struct AuditEventV1: Codable, JSONEncodable, Hashable {

    /** Unique identifier for this audit trail event. */
    public var id: String
    /** The timestamp of this event in ISO-8601 format. */
    public var timestamp: String
    /** The type of this event. */
    public var type: String
    /** The user or API token that triggered this event. */
    public var actor: String
    /** The email of the user that triggered this event. */
    public var actorEmail: String?
    /** The identifier of the resource affected by this event. */
    public var resourceId: String
    /** The kind of resource affected by this event. */
    public var resourceType: String
    /** The name of the resource affected by this event. */
    public var resourceName: String

    public init(id: String, timestamp: String, type: String, actor: String, actorEmail: String? = nil, resourceId: String, resourceType: String, resourceName: String) {
        self.id = id
        self.timestamp = timestamp
        self.type = type
        self.actor = actor
        self.actorEmail = actorEmail
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.resourceName = resourceName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case timestamp
        case type
        case actor
        case actorEmail
        case resourceId
        case resourceType
        case resourceName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(timestamp, forKey: .timestamp)
        try container.encode(type, forKey: .type)
        try container.encode(actor, forKey: .actor)
        try container.encodeIfPresent(actorEmail, forKey: .actorEmail)
        try container.encode(resourceId, forKey: .resourceId)
        try container.encode(resourceType, forKey: .resourceType)
        try container.encode(resourceName, forKey: .resourceName)
    }
}

