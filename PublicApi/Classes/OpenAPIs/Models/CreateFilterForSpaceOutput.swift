//
// CreateFilterForSpaceOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Output for CreateFilter. */
public struct CreateFilterForSpaceOutput: Codable, JSONEncodable, Hashable {

    public var filter: Filter4

    public init(filter: Filter4) {
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
