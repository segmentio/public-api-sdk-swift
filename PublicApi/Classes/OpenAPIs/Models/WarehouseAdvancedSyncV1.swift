//
// WarehouseAdvancedSyncV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Determines the time of day at which a Warehouse should sync. */
public struct WarehouseAdvancedSyncV1: Codable, JSONEncodable, Hashable {

    /** The hour of day for which to enable/disable a sync, between 0 and 23. */
    public var hourOfDay: Double
    /** Enable to the sync at the specified hour. */
    public var enabled: Bool

    public init(hourOfDay: Double, enabled: Bool) {
        self.hourOfDay = hourOfDay
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case hourOfDay
        case enabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(hourOfDay, forKey: .hourOfDay)
        try container.encode(enabled, forKey: .enabled)
    }
}

