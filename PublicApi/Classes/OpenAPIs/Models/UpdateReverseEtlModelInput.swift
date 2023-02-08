//
// UpdateReverseEtlModelInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines how to update an existing Model. */
public struct UpdateReverseEtlModelInput: Codable, JSONEncodable, Hashable {

    public enum ScheduleStrategy: String, Codable, CaseIterable {
        case manual = "MANUAL"
        case periodic = "PERIODIC"
        case specificDays = "SPECIFIC_DAYS"
    }
    /** A short, human-readable description of the Model. */
    public var name: String?
    /** A longer, more descriptive explanation of the Model. */
    public var description: String?
    /** Indicates whether the Model should have syncs enabled. When disabled, no syncs will be triggered, regardless of the enabled status of the attached destinations/subscriptions. */
    public var enabled: Bool?
    /** Determines the strategy used for triggering syncs, which will be used in conjunction with scheduleConfig. */
    public var scheduleStrategy: ScheduleStrategy?
    /** Depending on the chosen strategy, configures the schedule for this model. */
    public var scheduleConfig: JSON?
    /** The SQL query that will be executed to extract data from the connected Source. */
    public var query: String?
    /** Indicates the column named in `query` that should be used to uniquely identify the extracted records. */
    public var queryIdentifierColumn: String?

    public init(name: String? = nil, description: String? = nil, enabled: Bool? = nil, scheduleStrategy: ScheduleStrategy? = nil, scheduleConfig: JSON? = nil, query: String? = nil, queryIdentifierColumn: String? = nil) {
        self.name = name
        self.description = description
        self.enabled = enabled
        self.scheduleStrategy = scheduleStrategy
        self.scheduleConfig = scheduleConfig
        self.query = query
        self.queryIdentifierColumn = queryIdentifierColumn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case enabled
        case scheduleStrategy
        case scheduleConfig
        case query
        case queryIdentifierColumn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(scheduleStrategy, forKey: .scheduleStrategy)
        try container.encodeIfPresent(scheduleConfig, forKey: .scheduleConfig)
        try container.encodeIfPresent(query, forKey: .query)
        try container.encodeIfPresent(queryIdentifierColumn, forKey: .queryIdentifierColumn)
    }
}

