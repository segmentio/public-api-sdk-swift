//
// DeliveryOverviewMetricsDataset.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Dataset within GetDeliveryOverviewMetricsBetaOutput. */
public struct DeliveryOverviewMetricsDataset: Codable, JSONEncodable, Hashable {

    /** The name of the event if group By[] included 'event Name' in the request. */
    public var eventName: String?
    /** The version of the app if group By[] included 'app Version' in the request. */
    public var appVersion: String?
    /** The event type if group By[] included 'event Type' in the request. */
    public var eventType: String?
    /** The discard reason for dropped events if group By[] included 'discard Reason' in the request. */
    public var discardReason: String?
    /** Holds the count of all event counts over the time frame of the series. */
    public var total: Double
    /** A list of the event counts broken down by the requested granularity, time frame, and group By options. */
    public var series: [DeliveryOverviewMetricsDatapoint]
    /** The number of events successfully delivered upon retry. */
    public var totalRetryCount: Double?

    public init(eventName: String? = nil, appVersion: String? = nil, eventType: String? = nil, discardReason: String? = nil, total: Double, series: [DeliveryOverviewMetricsDatapoint], totalRetryCount: Double? = nil) {
        self.eventName = eventName
        self.appVersion = appVersion
        self.eventType = eventType
        self.discardReason = discardReason
        self.total = total
        self.series = series
        self.totalRetryCount = totalRetryCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventName
        case appVersion
        case eventType
        case discardReason
        case total
        case series
        case totalRetryCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encodeIfPresent(appVersion, forKey: .appVersion)
        try container.encodeIfPresent(eventType, forKey: .eventType)
        try container.encodeIfPresent(discardReason, forKey: .discardReason)
        try container.encode(total, forKey: .total)
        try container.encode(series, forKey: .series)
        try container.encodeIfPresent(totalRetryCount, forKey: .totalRetryCount)
    }
}

