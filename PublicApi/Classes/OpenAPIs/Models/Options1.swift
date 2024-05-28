//
// Options1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Options which should be applied when segmenting traits. */
public struct Options1: Codable, JSONEncodable, Hashable {

    /** Determines whether data prior to the computed trait being created is included when determining the computed trait value. Note that including historical data may be needed in order to properly handle the definition specified. In these cases, Segment will automatically handle including historical data and the response will return the includeHistoricalData parameter as true. */
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
