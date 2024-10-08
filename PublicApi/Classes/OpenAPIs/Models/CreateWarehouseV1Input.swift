//
// CreateWarehouseV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Create a new Warehouse based on a set of parameters. */
public struct CreateWarehouseV1Input: Codable, JSONEncodable, Hashable {

    /** The Warehouse metadata to use. */
    public var metadataId: String
    /** An optional human-readable name for this Warehouse. */
    public var name: String?
    /** Enable to allow this Warehouse to receive data. Defaults to true. */
    public var enabled: Bool?
    /** A key-value object that contains instance-specific settings for a Warehouse.  Different kinds of Warehouses require different settings. The required and optional settings for a Warehouse are described in the `options` object of the associated Warehouse metadata.  You can find the full list of Warehouse metadata and related settings information in the `/catalog/warehouses` endpoint. */
    public var settings: JSON?
    /** Whether to disconnect all Sources from this Warehouse. */
    public var disconnectAllSources: Bool?

    public init(metadataId: String, name: String? = nil, enabled: Bool? = nil, settings: JSON?, disconnectAllSources: Bool? = nil) {
        self.metadataId = metadataId
        self.name = name
        self.enabled = enabled
        self.settings = settings
        self.disconnectAllSources = disconnectAllSources
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case metadataId
        case name
        case enabled
        case settings
        case disconnectAllSources
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(metadataId, forKey: .metadataId)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encode(settings, forKey: .settings)
        try container.encodeIfPresent(disconnectAllSources, forKey: .disconnectAllSources)
    }
}

