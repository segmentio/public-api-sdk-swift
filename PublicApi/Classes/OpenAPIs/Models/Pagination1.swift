//
// Pagination1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Pagination options. */
public struct Pagination1: Codable, JSONEncodable, Hashable {

    /** The page to request.  Acceptable values to use here are in PaginationOutput objects, in the `current`, `next`, and `previous` keys.  Consumers of the API must treat this value as opaque. */
    public var cursor: String?
    /** The number of items to retrieve in a page, between 1 and 200. */
    public var count: Int

    public init(cursor: String? = nil, count: Int) {
        self.cursor = cursor
        self.count = count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cursor
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cursor, forKey: .cursor)
        try container.encode(count, forKey: .count)
    }
}

