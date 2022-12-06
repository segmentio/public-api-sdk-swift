//
// UpdateTrackingPlanV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Updates the Workspace&#39;s Tracking Plan. */
public struct UpdateTrackingPlanV1Input: Codable, JSONEncodable, Hashable {

    /** The Tracking Plan's name.  Config API note: equal to `displayName`. */
    public var name: String?
    /** The Tracking Plan's description. */
    public var description: String?

    public init(name: String? = nil, description: String? = nil) {
        self.name = name
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

