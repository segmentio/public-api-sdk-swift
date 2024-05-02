//
// Definition3.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents the Compute Query Language definition of the computation and type of computation. */
public struct Definition3: Codable, JSONEncodable, Hashable {

    public var type: String
    public var query: String

    public init(type: String, query: String) {
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

