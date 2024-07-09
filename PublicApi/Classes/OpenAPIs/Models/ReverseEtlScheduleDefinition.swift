//
// ReverseEtlScheduleDefinition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines a configuration object used for scheduling, which can vary depending on the configured strategy. */
public struct ReverseEtlScheduleDefinition: Codable, JSONEncodable, Hashable {

    public enum Strategy: String, Codable, CaseIterable {
        case manual = "MANUAL"
        case periodic = "PERIODIC"
        case specificDays = "SPECIFIC_DAYS"
    }
    /** Strategy supports three modes: Periodic, Specific Days, or Manual. */
    public var strategy: Strategy
    public var config: Config?

    public init(strategy: Strategy, config: Config? = nil) {
        self.strategy = strategy
        self.config = config
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case strategy
        case config
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(strategy, forKey: .strategy)
        try container.encodeIfPresent(config, forKey: .config)
    }
}

