//
// ListFunctionVersionsAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Lists Versions of a Function. */
public struct ListFunctionVersionsAlphaOutput: Codable, JSONEncodable, Hashable {

    /** An array of Functions. */
    public var versions: [Version]
    public var pagination: Pagination2

    public init(versions: [Version], pagination: Pagination2) {
        self.versions = versions
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case versions
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(versions, forKey: .versions)
        try container.encode(pagination, forKey: .pagination)
    }
}

