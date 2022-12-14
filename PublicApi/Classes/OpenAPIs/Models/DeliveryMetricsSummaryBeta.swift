//
// DeliveryMetricsSummaryBeta.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines the summary of delivery metrics for a Destination. */
public struct DeliveryMetricsSummaryBeta: Codable, JSONEncodable, Hashable {

    /** The Source id.  Config API note: analogous to `parent`. */
    public var sourceId: String
    /** The Destination metadata id. */
    public var destinationMetadataId: String
    /** The summary of event delivery metrics for the requested Destination. */
    public var metrics: [MetricBeta]

    public init(sourceId: String, destinationMetadataId: String, metrics: [MetricBeta]) {
        self.sourceId = sourceId
        self.destinationMetadataId = destinationMetadataId
        self.metrics = metrics
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sourceId
        case destinationMetadataId
        case metrics
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sourceId, forKey: .sourceId)
        try container.encode(destinationMetadataId, forKey: .destinationMetadataId)
        try container.encode(metrics, forKey: .metrics)
    }
}

