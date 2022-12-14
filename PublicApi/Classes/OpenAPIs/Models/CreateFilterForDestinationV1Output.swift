//
// CreateFilterForDestinationV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Output for CreateDestinationFiltersV1. */
public struct CreateFilterForDestinationV1Output: Codable, JSONEncodable, Hashable {

    public var filter: Filter2

    public init(filter: Filter2) {
        self.filter = filter
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filter
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(filter, forKey: .filter)
    }
}

