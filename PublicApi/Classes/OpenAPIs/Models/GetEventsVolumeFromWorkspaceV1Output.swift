//
// GetEventsVolumeFromWorkspaceV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** GetEventsVolumeFromWorkspaceV1Output represents the results given the input query. */
public struct GetEventsVolumeFromWorkspaceV1Output: Codable, JSONEncodable, Hashable {

    /** Observability event volume path. */
    public var path: String
    public var query: Query
    /** The resultant list of series broken down by the dimensions requested over the time frame requested and ordered by the total count of events in all series. Note: The limit of entries returned is 5000. */
    public var result: [SourceEventVolumeV1]
    public var pagination: Pagination2?

    public init(path: String, query: Query, result: [SourceEventVolumeV1], pagination: Pagination2? = nil) {
        self.path = path
        self.query = query
        self.result = result
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case path
        case query
        case result
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(path, forKey: .path)
        try container.encode(query, forKey: .query)
        try container.encode(result, forKey: .result)
        try container.encodeIfPresent(pagination, forKey: .pagination)
    }
}

