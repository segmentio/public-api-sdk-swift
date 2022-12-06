//
// SourceEventVolumeV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** SourceEventVolume represents a time series of event volume for a Workspace broken down by the dimensions which the customer specifies (optional parameters). */
public struct SourceEventVolumeV1: Codable, JSONEncodable, Hashable {

    public var source: Source
    /** The name of the event, if applicable. */
    public var eventName: String?
    /** The event type, if applicable. */
    public var eventType: String?
    /** The total count for all events in the requested time frame. */
    public var total: Double
    /** A list of the event counts broken down by the requested granularity. */
    public var series: [SourceEventVolumeDatapointV1]

    public init(source: Source, eventName: String? = nil, eventType: String? = nil, total: Double, series: [SourceEventVolumeDatapointV1]) {
        self.source = source
        self.eventName = eventName
        self.eventType = eventType
        self.total = total
        self.series = series
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
        case eventName
        case eventType
        case total
        case series
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(source, forKey: .source)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encodeIfPresent(eventType, forKey: .eventType)
        try container.encode(total, forKey: .total)
        try container.encode(series, forKey: .series)
    }
}

