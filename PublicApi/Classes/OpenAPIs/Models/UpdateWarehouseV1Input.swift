//
// UpdateWarehouseV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Updates an existing Warehouse based on a set of parameters. */
public struct UpdateWarehouseV1Input: Codable, JSONEncodable, Hashable {

    /** An optional human-readable name to associate with this Warehouse. */
    public var name: String?
    /** Enable to allow this Warehouse to receive data. */
    public var enabled: Bool?
    /** A key-value object that contains instance-specific settings for a Warehouse.  Different kinds of Warehouses require different settings. The required and optional settings for a Warehouse are described in the `options` object of the associated Warehouse metadata.  You can find the full list of Warehouse metadata and related settings information in the `/catalog/warehouses` endpoint. */
    public var settings: JSON?

    public init(name: String? = nil, enabled: Bool? = nil, settings: JSON?) {
        self.name = name
        self.enabled = enabled
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case enabled
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encode(settings, forKey: .settings)
    }
}

