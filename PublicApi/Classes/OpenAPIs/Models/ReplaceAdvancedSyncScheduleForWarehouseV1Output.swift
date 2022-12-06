//
// ReplaceAdvancedSyncScheduleForWarehouseV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the advanced sync schedule for a Warehouse. */
public struct ReplaceAdvancedSyncScheduleForWarehouseV1Output: Codable, JSONEncodable, Hashable {

    /** Indicates if an advanced sync schedule is enabled for the Warehouse. */
    public var enabled: Bool
    public var schedule: Schedule2?

    public init(enabled: Bool, schedule: Schedule2? = nil) {
        self.enabled = enabled
        self.schedule = schedule
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case schedule
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(enabled, forKey: .enabled)
        try container.encodeIfPresent(schedule, forKey: .schedule)
    }
}

