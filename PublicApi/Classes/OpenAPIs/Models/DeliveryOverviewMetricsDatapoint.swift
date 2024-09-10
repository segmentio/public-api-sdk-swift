//
// DeliveryOverviewMetricsDatapoint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Series within DeliveryOverviewMetricsDataset. */
public struct DeliveryOverviewMetricsDatapoint: Codable, JSONEncodable, Hashable {

    /** The timestamp corresponding to the beginning of the window given by the requested granularity. */
    public var time: String
    /** Holds the number of events within the specified granularity and group By options. */
    public var count: Double
    /** The number of retried events that were successfully delivered. */
    public var retryCount: Double?

    public init(time: String, count: Double, retryCount: Double? = nil) {
        self.time = time
        self.count = count
        self.retryCount = retryCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case time
        case count
        case retryCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(time, forKey: .time)
        try container.encode(count, forKey: .count)
        try container.encodeIfPresent(retryCount, forKey: .retryCount)
    }
}

