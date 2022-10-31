//
// GetWarehouseV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns a Warehouse. */
public struct GetWarehouseV1Output: Codable, JSONEncodable, Hashable {

    public var warehouse: Warehouse

    public init(warehouse: Warehouse) {
        self.warehouse = warehouse
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case warehouse
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(warehouse, forKey: .warehouse)
    }
}

