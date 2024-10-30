//
// ListTrackingPlansV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Lists the Tracking Plans associated with the current Workspace. */
public struct ListTrackingPlansV1Output: Codable, JSONEncodable, Hashable {

    /** A paginated list of Tracking Plans. */
    public var trackingPlans: [TrackingPlanV1]
    public var pagination: Pagination2

    public init(trackingPlans: [TrackingPlanV1], pagination: Pagination2) {
        self.trackingPlans = trackingPlans
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case trackingPlans
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(trackingPlans, forKey: .trackingPlans)
        try container.encode(pagination, forKey: .pagination)
    }
}

