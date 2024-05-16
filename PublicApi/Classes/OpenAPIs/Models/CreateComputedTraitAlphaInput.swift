//
// CreateComputedTraitAlphaInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Input to create a trait. */
public struct CreateComputedTraitAlphaInput: Codable, JSONEncodable, Hashable {

    /** The name of the computation. */
    public var name: String
    /** Determines whether a computation is enabled. */
    public var enabled: Bool?
    /** The description of the computation. */
    public var description: String
    public var definition: Definition
    public var options: Options?

    public init(name: String, enabled: Bool? = nil, description: String, definition: Definition, options: Options? = nil) {
        self.name = name
        self.enabled = enabled
        self.description = description
        self.definition = definition
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case enabled
        case description
        case definition
        case options
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encode(description, forKey: .description)
        try container.encode(definition, forKey: .definition)
        try container.encodeIfPresent(options, forKey: .options)
    }
}

