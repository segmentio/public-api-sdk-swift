//
// Options2.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options which should be applied when aggregating computed traits. */
public struct Options2: Codable, JSONEncodable, Hashable {

    /** Determines whether data prior to the computed trait being created is included when determining the computed trait value. */
    public var includeHistoricalData: Bool?
    /** Determines whether anonymous users should be included when determining the computed trait value. */
    public var includeAnonymousUsers: Bool?

    public init(includeHistoricalData: Bool? = nil, includeAnonymousUsers: Bool? = nil) {
        self.includeHistoricalData = includeHistoricalData
        self.includeAnonymousUsers = includeAnonymousUsers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case includeHistoricalData
        case includeAnonymousUsers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(includeHistoricalData, forKey: .includeHistoricalData)
        try container.encodeIfPresent(includeAnonymousUsers, forKey: .includeAnonymousUsers)
    }
}

