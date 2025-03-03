//
// CreateJourneyAlphaInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The journey Create input. */
public struct CreateJourneyAlphaInput: Codable, JSONEncodable, Hashable {

    /** The name of the journey. */
    public var name: String
    /** The description of the journey. */
    public var description: String
    public var definition: Definition6

    public init(name: String, description: String, definition: Definition6) {
        self.name = name
        self.description = description
        self.definition = definition
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case definition
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(description, forKey: .description)
        try container.encode(definition, forKey: .definition)
    }
}

