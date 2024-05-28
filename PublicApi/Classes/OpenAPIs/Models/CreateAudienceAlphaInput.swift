//
// CreateAudienceAlphaInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Input to create an audience. */
public struct CreateAudienceAlphaInput: Codable, JSONEncodable, Hashable {

    /** Name of the audience. */
    public var name: String
    /** Determines whether a computation is enabled. */
    public var enabled: Bool?
    /** Description of the audience. */
    public var description: String?
    public var definition: Definition4
    public var options: Options3?

    public init(name: String, enabled: Bool? = nil, description: String? = nil, definition: Definition4, options: Options3? = nil) {
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
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(definition, forKey: .definition)
        try container.encodeIfPresent(options, forKey: .options)
    }
}
