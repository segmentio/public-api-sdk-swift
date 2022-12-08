//
// Metadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The metadata of the Destination of which this Destination is an instance of. For example, Google Analytics or Amplitude. */
public struct Metadata: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case deprecated = "DEPRECATED"
        case privateBeta = "PRIVATE_BETA"
        case privateBuilding = "PRIVATE_BUILDING"
        case privateSubmitted = "PRIVATE_SUBMITTED"
        case _public = "PUBLIC"
        case publicBeta = "PUBLIC_BETA"
        case unavailable = "UNAVAILABLE"
    }
    /** The id of the Destination metadata.  Config API note: analogous to `name`. */
    public var id: String
    /** The user-friendly name of the Destination.  Config API note: equal to `displayName`. */
    public var name: String
    /** The description of the Destination. */
    public var description: String
    /** The slug used to identify the Destination in the Segment app. */
    public var slug: String
    public var logos: Logos
    /** Options configured for the Destination. */
    public var options: [IntegrationOptionBeta]
    /** Support status of the Destination. */
    public var status: Status
    /** A list of names previously used by the Destination. */
    public var previousNames: [String]
    /** A list of categories with which the Destination is associated. */
    public var categories: [String]
    /** A website URL for this Destination. */
    public var website: String
    /** A list of components this Destination provides. */
    public var components: [DestinationMetadataComponentV1]
    public var supportedFeatures: SupportedFeatures
    public var supportedMethods: SupportedMethods
    public var supportedPlatforms: SupportedPlatforms
    /** Actions available for the Destination. */
    public var actions: [DestinationMetadataActionV1]
    /** Predefined Destination subscriptions that can optionally be applied when connecting a new instance of the Destination. */
    public var presets: [DestinationMetadataSubscriptionPresetV1]
    /** Contact info for Integration Owners. */
    public var contacts: [Contact]?
    /** Partner Owned flag. */
    public var partnerOwned: Bool?
    /** A list of supported regions for this Destination. */
    public var supportedRegions: [String]?
    /** The list of regional endpoints for this Destination. */
    public var regionEndpoints: [String]?

    public init(id: String, name: String, description: String, slug: String, logos: Logos, options: [IntegrationOptionBeta], status: Status, previousNames: [String], categories: [String], website: String, components: [DestinationMetadataComponentV1], supportedFeatures: SupportedFeatures, supportedMethods: SupportedMethods, supportedPlatforms: SupportedPlatforms, actions: [DestinationMetadataActionV1], presets: [DestinationMetadataSubscriptionPresetV1], contacts: [Contact]? = nil, partnerOwned: Bool? = nil, supportedRegions: [String]? = nil, regionEndpoints: [String]? = nil) {
        self.id = id
        self.name = name
        self.description = description
        self.slug = slug
        self.logos = logos
        self.options = options
        self.status = status
        self.previousNames = previousNames
        self.categories = categories
        self.website = website
        self.components = components
        self.supportedFeatures = supportedFeatures
        self.supportedMethods = supportedMethods
        self.supportedPlatforms = supportedPlatforms
        self.actions = actions
        self.presets = presets
        self.contacts = contacts
        self.partnerOwned = partnerOwned
        self.supportedRegions = supportedRegions
        self.regionEndpoints = regionEndpoints
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
        case slug
        case logos
        case options
        case status
        case previousNames
        case categories
        case website
        case components
        case supportedFeatures
        case supportedMethods
        case supportedPlatforms
        case actions
        case presets
        case contacts
        case partnerOwned
        case supportedRegions
        case regionEndpoints
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(slug, forKey: .slug)
        try container.encode(logos, forKey: .logos)
        try container.encode(options, forKey: .options)
        try container.encode(status, forKey: .status)
        try container.encode(previousNames, forKey: .previousNames)
        try container.encode(categories, forKey: .categories)
        try container.encode(website, forKey: .website)
        try container.encode(components, forKey: .components)
        try container.encode(supportedFeatures, forKey: .supportedFeatures)
        try container.encode(supportedMethods, forKey: .supportedMethods)
        try container.encode(supportedPlatforms, forKey: .supportedPlatforms)
        try container.encode(actions, forKey: .actions)
        try container.encode(presets, forKey: .presets)
        try container.encodeIfPresent(contacts, forKey: .contacts)
        try container.encodeIfPresent(partnerOwned, forKey: .partnerOwned)
        try container.encodeIfPresent(supportedRegions, forKey: .supportedRegions)
        try container.encodeIfPresent(regionEndpoints, forKey: .regionEndpoints)
    }
}

