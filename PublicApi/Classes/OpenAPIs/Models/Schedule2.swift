//
// Schedule2.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The schedule that contains the overrides for the Warehouse, if enabled. */
public struct Schedule2: Codable, JSONEncodable, Hashable {

    /** A list that contains the times when syncs should occur. */
    public var times: [WarehouseAdvancedSyncV1]?
    /** A TZ-database timezone for this sync schedule. */
    public var timezone: String?

    public init(times: [WarehouseAdvancedSyncV1]? = nil, timezone: String? = nil) {
        self.times = times
        self.timezone = timezone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case times
        case timezone
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(times, forKey: .times)
        try container.encodeIfPresent(timezone, forKey: .timezone)
    }
}

