//
// UpdateRulesInTrackingPlanV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Updates Tracking Plan rules. Non-existent rules are added. */
public struct UpdateRulesInTrackingPlanV1Output: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case success = "SUCCESS"
    }
    /** The operation status. */
    public var status: Status

    public init(status: Status) {
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(status, forKey: .status)
    }
}

