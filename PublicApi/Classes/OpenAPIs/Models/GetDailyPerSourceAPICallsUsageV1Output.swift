//
// GetDailyPerSourceAPICallsUsageV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns a list of daily aggregations of Source level API calls counts. */
public struct GetDailyPerSourceAPICallsUsageV1Output: Codable, JSONEncodable, Hashable {

    /** The list of daily per Source API calls count aggregates. */
    public var dailyPerSourceAPICallsUsage: [SourceAPICallSnapshotV1]
    public var pagination: Pagination

    public init(dailyPerSourceAPICallsUsage: [SourceAPICallSnapshotV1], pagination: Pagination) {
        self.dailyPerSourceAPICallsUsage = dailyPerSourceAPICallsUsage
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dailyPerSourceAPICallsUsage
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(dailyPerSourceAPICallsUsage, forKey: .dailyPerSourceAPICallsUsage)
        try container.encode(pagination, forKey: .pagination)
    }
}

