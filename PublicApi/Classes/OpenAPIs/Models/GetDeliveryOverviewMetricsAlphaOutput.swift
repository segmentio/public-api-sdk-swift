//
// GetDeliveryOverviewMetricsAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Output of the Delivery Overview public api endpoints. */
public struct GetDeliveryOverviewMetricsAlphaOutput: Codable, JSONEncodable, Hashable {

    /** The total number of events for the returned dataset. */
    public var total: Double
    /** Represents the list of series broken down by the dimensions and timeframe requested. */
    public var dataset: [DeliveryOverviewMetricsDataset]
    public var pagination: Pagination1

    public init(total: Double, dataset: [DeliveryOverviewMetricsDataset], pagination: Pagination1) {
        self.total = total
        self.dataset = dataset
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case total
        case dataset
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(total, forKey: .total)
        try container.encode(dataset, forKey: .dataset)
        try container.encode(pagination, forKey: .pagination)
    }
}

