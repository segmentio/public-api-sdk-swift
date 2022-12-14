//
// BreakdownBeta.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The breakdown of a metric. */
public struct BreakdownBeta: Codable, JSONEncodable, Hashable {

    /** The name of the metric. */
    public var metricName: String
    /** Number of occurrences of the metric. */
    public var value: Double

    public init(metricName: String, value: Double) {
        self.metricName = metricName
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case metricName
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(metricName, forKey: .metricName)
        try container.encode(value, forKey: .value)
    }
}

