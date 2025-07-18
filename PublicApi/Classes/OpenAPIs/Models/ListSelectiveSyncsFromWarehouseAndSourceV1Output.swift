//
// ListSelectiveSyncsFromWarehouseAndSourceV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Results containing the Selective Sync configuration for a Warehouse. */
public struct ListSelectiveSyncsFromWarehouseAndSourceV1Output: Codable, JSONEncodable, Hashable {

    /** Represents a list of Source, collection, and properties synced to the Warehouse. */
    public var items: [WarehouseSelectiveSyncItemV1]
    public var pagination: Pagination1

    public init(items: [WarehouseSelectiveSyncItemV1], pagination: Pagination1) {
        self.items = items
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case items
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(items, forKey: .items)
        try container.encode(pagination, forKey: .pagination)
    }
}

