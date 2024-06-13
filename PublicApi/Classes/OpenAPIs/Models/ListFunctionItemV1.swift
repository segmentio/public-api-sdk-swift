//
// ListFunctionItemV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents a Function in a list. */
public struct ListFunctionItemV1: Codable, JSONEncodable, Hashable {

    public enum ResourceType: String, Codable, CaseIterable {
        case destination = "DESTINATION"
        case insertDestination = "INSERT_DESTINATION"
        case insertSource = "INSERT_SOURCE"
        case source = "SOURCE"
    }
    /** An identifier for this Function. */
    public var id: String?
    /** The Function type.  Config API note: equal to `type`. */
    public var resourceType: ResourceType?
    /** The time this Function was created. */
    public var createdAt: String?
    /** The id of the user who created this Function. */
    public var createdBy: String?
    /** A display name for this Function. */
    public var displayName: String?
    /** A description for this Function. */
    public var description: String?
    /** The URL of the logo for this Function. */
    public var logoUrl: String?
    /** The catalog id of this Function. */
    public var catalogId: String?

    public init(id: String? = nil, resourceType: ResourceType? = nil, createdAt: String? = nil, createdBy: String? = nil, displayName: String? = nil, description: String? = nil, logoUrl: String? = nil, catalogId: String? = nil) {
        self.id = id
        self.resourceType = resourceType
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.displayName = displayName
        self.description = description
        self.logoUrl = logoUrl
        self.catalogId = catalogId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case resourceType
        case createdAt
        case createdBy
        case displayName
        case description
        case logoUrl
        case catalogId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(resourceType, forKey: .resourceType)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(logoUrl, forKey: .logoUrl)
        try container.encodeIfPresent(catalogId, forKey: .catalogId)
    }
}

