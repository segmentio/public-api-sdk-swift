//
// ListFiltersFromDestinationV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Output for ListDestinationFiltersV1. */
public struct ListFiltersFromDestinationV1Output: Codable, JSONEncodable, Hashable {

    /** A list of the filters that belong to the specified Destination instance. */
    public var filters: [DestinationFilterV1]
    public var pagination: Pagination1

    public init(filters: [DestinationFilterV1], pagination: Pagination1) {
        self.filters = filters
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filters
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(filters, forKey: .filters)
        try container.encode(pagination, forKey: .pagination)
    }
}

