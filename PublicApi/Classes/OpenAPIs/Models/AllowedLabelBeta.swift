//
// AllowedLabelBeta.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines a label that you may apply to resources within a Workspace. */
public struct AllowedLabelBeta: Codable, JSONEncodable, Hashable {

    /** The key identifier for this label. */
    public var key: String
    /** The value of this label. */
    public var value: String
    /** A description of what this label represents. */
    public var description: String?

    public init(key: String, value: String, description: String? = nil) {
        self.key = key
        self.value = value
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case value
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(key, forKey: .key)
        try container.encode(value, forKey: .value)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

