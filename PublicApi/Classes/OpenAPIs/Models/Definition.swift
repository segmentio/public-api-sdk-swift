//
// Definition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Query language definition and type. */
public struct Definition: Codable, JSONEncodable, Hashable {

    /** The query language string defining the audience segmentation criteria. */
    public var query: String
    /** The underlying data type being segmented for this audience.  Possible values: users, accounts. */
    public var type: String

    public init(query: String, type: String) {
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

