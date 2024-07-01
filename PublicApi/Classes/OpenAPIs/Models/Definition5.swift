//
// Definition5.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents the Compute Query Language definition of the computation and type of computation. Note: The definition for an Audience updated via the API is not editable via the Segment App. */
public struct Definition5: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case accounts = "ACCOUNTS"
        case users = "USERS"
    }
    /** The underlying data type being segmented for this audience.  Possible values: users, accounts. */
    public var type: ModelType
    /** The query language string defining the audience segmentation criteria.  For guidance on using the query language, see the [Segment documentation site](https://segment.com/docs/api/public-api/query-language). */
    public var query: String

    public init(type: ModelType, query: String) {
        self.type = type
        self.query = query
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case query
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(query, forKey: .query)
    }
}

