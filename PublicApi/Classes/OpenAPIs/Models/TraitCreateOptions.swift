//
// TraitCreateOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TraitCreateOptions: Codable, JSONEncodable, Hashable {

    public var includeHistorical: Bool?
    public var includeAnonymous: Bool?

    public init(includeHistorical: Bool? = nil, includeAnonymous: Bool? = nil) {
        self.includeHistorical = includeHistorical
        self.includeAnonymous = includeAnonymous
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case includeHistorical
        case includeAnonymous
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(includeHistorical, forKey: .includeHistorical)
        try container.encodeIfPresent(includeAnonymous, forKey: .includeAnonymous)
    }
}

