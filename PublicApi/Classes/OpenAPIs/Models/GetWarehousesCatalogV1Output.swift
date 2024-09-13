//
// GetWarehousesCatalogV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns a list of all Warehouse catalog items contained within a given page. */
public struct GetWarehousesCatalogV1Output: Codable, JSONEncodable, Hashable {

    /** All Warehouse catalog items contained within the requested page. */
    public var warehousesCatalog: [WarehouseMetadataV1]
    public var pagination: Pagination2

    public init(warehousesCatalog: [WarehouseMetadataV1], pagination: Pagination2) {
        self.warehousesCatalog = warehousesCatalog
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case warehousesCatalog
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(warehousesCatalog, forKey: .warehousesCatalog)
        try container.encode(pagination, forKey: .pagination)
    }
}

