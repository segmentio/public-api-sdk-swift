//
// SourceMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The catalog item matched by id. */
public struct SourceMetadata: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case deprecated = "DEPRECATED"
        case privateBeta = "PRIVATE_BETA"
        case privateBuilding = "PRIVATE_BUILDING"
        case privateSubmitted = "PRIVATE_SUBMITTED"
        case _public = "PUBLIC"
        case publicBeta = "PUBLIC_BETA"
        case unavailable = "UNAVAILABLE"
    }
    /** The id for this Source metadata in the Segment catalog.  Config API note: analogous to `name`. */
    public var id: String
    /** The user-friendly name of this Source.  Config API note: equal to `displayName`. */
    public var name: String
    /** The slug that identifies this Source in the Segment app.  Config API note: equal to `name`. */
    public var slug: String
    /** The description of this Source. */
    public var description: String
    public var logos: Logos1
    /** Options for this Source. */
    public var options: [IntegrationOptionBeta]
    /** A list of categories this Source belongs to. */
    public var categories: [String]
    /** True if this is a Cloud Event Source. */
    public var isCloudEventSource: Bool
    /** Support status of the Source. */
    public var status: Status
    /** Partner Owned flag. */
    public var partnerOwned: Bool?

    public init(id: String, name: String, slug: String, description: String, logos: Logos1, options: [IntegrationOptionBeta], categories: [String], isCloudEventSource: Bool, status: Status, partnerOwned: Bool? = nil) {
        self.id = id
        self.name = name
        self.slug = slug
        self.description = description
        self.logos = logos
        self.options = options
        self.categories = categories
        self.isCloudEventSource = isCloudEventSource
        self.status = status
        self.partnerOwned = partnerOwned
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case slug
        case description
        case logos
        case options
        case categories
        case isCloudEventSource
        case status
        case partnerOwned
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(slug, forKey: .slug)
        try container.encode(description, forKey: .description)
        try container.encode(logos, forKey: .logos)
        try container.encode(options, forKey: .options)
        try container.encode(categories, forKey: .categories)
        try container.encode(isCloudEventSource, forKey: .isCloudEventSource)
        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(partnerOwned, forKey: .partnerOwned)
    }
}

