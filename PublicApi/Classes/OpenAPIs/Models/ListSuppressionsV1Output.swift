//
// ListSuppressionsV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The output of a list suppressed call for a Workspace. */
public struct ListSuppressionsV1Output: Codable, JSONEncodable, Hashable {

    /** An array that lists the suppressions from the Workspace.  Config API note: equal to `attributes`. */
    public var suppressed: [SuppressedInner]
    public var pagination: Pagination3

    public init(suppressed: [SuppressedInner], pagination: Pagination3) {
        self.suppressed = suppressed
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case suppressed
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(suppressed, forKey: .suppressed)
        try container.encode(pagination, forKey: .pagination)
    }
}

