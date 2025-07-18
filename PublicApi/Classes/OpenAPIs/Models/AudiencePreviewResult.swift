//
// AudiencePreviewResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AudiencePreviewResult: Codable, JSONEncodable, Hashable {

    /** Segment id. */
    public var id: String
    /** The entities associated with the profile. Will only have a value if the audience preview has `audienceType: LINKED` and entities are referenced in the audience preview's definition. */
    public var entities: JSON?

    public init(id: String, entities: JSON? = nil) {
        self.id = id
        self.entities = entities
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case entities
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(entities, forKey: .entities)
    }
}

