//
// UpdateProfilesWarehouseForSpaceWarehouseAlphaInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Updates a Profiles Warehouse based on a set of parameters. */
public struct UpdateProfilesWarehouseForSpaceWarehouseAlphaInput: Codable, JSONEncodable, Hashable {

    /** An optional human-readable name for this Warehouse. */
    public var name: String?
    /** Enable to allow this Warehouse to receive data. Defaults to true. */
    public var enabled: Bool?
    /** A key-value object that contains instance-specific settings for a Warehouse.  Different kinds of Warehouses require different settings. The required and optional settings for a Warehouse are described in the `options` object of the associated Warehouse metadata.  You can find the full list of Warehouse metadata and related settings information in the `/catalog/warehouses` endpoint. */
    public var settings: JSON?
    /** The custom schema name that Segment uses on the Warehouse side. The space slug value is default otherwise. */
    public var schemaName: String?

    public init(name: String? = nil, enabled: Bool? = nil, settings: JSON?, schemaName: String? = nil) {
        self.name = name
        self.enabled = enabled
        self.settings = settings
        self.schemaName = schemaName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case enabled
        case settings
        case schemaName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encode(settings, forKey: .settings)
        try container.encodeIfPresent(schemaName, forKey: .schemaName)
    }
}

