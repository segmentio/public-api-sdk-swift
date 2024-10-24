//
// GetDestinationsCatalogV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns a list of all Destination catalog items contained within a given page. */
public struct GetDestinationsCatalogV1Output: Codable, JSONEncodable, Hashable {

    /** All Destination catalog items contained within the requested page. */
    public var destinationsCatalog: [DestinationMetadataV1]
    public var pagination: Pagination

    public init(destinationsCatalog: [DestinationMetadataV1], pagination: Pagination) {
        self.destinationsCatalog = destinationsCatalog
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case destinationsCatalog
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(destinationsCatalog, forKey: .destinationsCatalog)
        try container.encode(pagination, forKey: .pagination)
    }
}

