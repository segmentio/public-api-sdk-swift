//
// Pagination3.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Pagination parameters. */
public struct Pagination3: Codable, JSONEncodable, Hashable {

    /** Current. */
    public var current: Double?
    /** Next. */
    public var next: Double?
    /** Total entries. */
    public var totalEntries: Double?

    public init(current: Double? = nil, next: Double? = nil, totalEntries: Double? = nil) {
        self.current = current
        self.next = next
        self.totalEntries = totalEntries
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case current
        case next
        case totalEntries
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(current, forKey: .current)
        try container.encodeIfPresent(next, forKey: .next)
        try container.encodeIfPresent(totalEntries, forKey: .totalEntries)
    }
}

