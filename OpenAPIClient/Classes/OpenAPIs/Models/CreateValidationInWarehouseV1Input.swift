//
// CreateValidationInWarehouseV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Verifies a set of Warehouse credentials by attempting to connect to it. */
public struct CreateValidationInWarehouseV1Input: Codable, JSONEncodable, Hashable {

    /** The id of the Warehouse metadata type. */
    public var metadataId: String
    /** The settings to check. */
    public var settings: JSON?

    public init(metadataId: String, settings: JSON?) {
        self.metadataId = metadataId
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case metadataId
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(metadataId, forKey: .metadataId)
        try container.encode(settings, forKey: .settings)
    }
}

