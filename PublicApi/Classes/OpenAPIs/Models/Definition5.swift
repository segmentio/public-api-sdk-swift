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

/** Query language definition and type. */
public struct Definition5: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case accounts = "ACCOUNTS"
        case users = "USERS"
    }
    /** The query language string defining the computed trait aggregation criteria. For guidance on using the query language, see the [Segment documentation site](https://segment.com/docs/api/public-api/query-language). */
    public var query: String
    /** The underlying data type being aggregated for this computed trait.  Possible values: users, accounts. */
    public var type: ModelType

    public init(query: String, type: ModelType) {
        self.query = query
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case query
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(query, forKey: .query)
        try container.encode(type, forKey: .type)
    }
}

