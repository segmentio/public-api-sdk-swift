//
// ReverseEtlPeriodicScheduleConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Definition for periodic interval. */
public struct ReverseEtlPeriodicScheduleConfig: Codable, JSONEncodable, Hashable {

    /** Duration is specified as a string, EG: 15m, 3h25m30s. */
    public var interval: String

    public init(interval: String) {
        self.interval = interval
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case interval
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(interval, forKey: .interval)
    }
}

