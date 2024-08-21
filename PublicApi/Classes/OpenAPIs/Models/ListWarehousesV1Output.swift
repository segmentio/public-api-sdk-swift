//
// ListWarehousesV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns a list of Warehouses that belong to a Workspace. */
public struct ListWarehousesV1Output: Codable, JSONEncodable, Hashable {

    /** A list of Warehouses that belong to the Workspace. */
    public var warehouses: [WarehouseV1]
    public var pagination: Pagination1

    public init(warehouses: [WarehouseV1], pagination: Pagination1) {
        self.warehouses = warehouses
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case warehouses
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(warehouses, forKey: .warehouses)
        try container.encode(pagination, forKey: .pagination)
    }
}

