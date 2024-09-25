//
// ListFiltersForSpaceOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Output for ListFiltersByIntegrationId. */
public struct ListFiltersForSpaceOutput: Codable, JSONEncodable, Hashable {

    /** Filter output. */
    public var filters: [Filter]?
    public var pagination: Pagination3?

    public init(filters: [Filter]? = nil, pagination: Pagination3? = nil) {
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
        try container.encodeIfPresent(filters, forKey: .filters)
        try container.encodeIfPresent(pagination, forKey: .pagination)
    }
}
