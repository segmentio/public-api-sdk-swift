//
// CreateFilterForDestinationV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Input for CreateDestinationFilterV1. */
public struct CreateFilterForDestinationV1Input: Codable, JSONEncodable, Hashable {

    /** The id of the Source associated with this filter. */
    public var sourceId: String
    /** The filter's condition. */
    public var _if: String
    /** Actions for the Destination filter. */
    public var actions: [DestinationFilterActionV1]
    /** The title of the filter. */
    public var title: String
    /** The description of the filter. */
    public var description: String?
    /** When set to true, the Destination filter is active. */
    public var enabled: Bool

    public init(sourceId: String, _if: String, actions: [DestinationFilterActionV1], title: String, description: String? = nil, enabled: Bool) {
        self.sourceId = sourceId
        self._if = _if
        self.actions = actions
        self.title = title
        self.description = description
        self.enabled = enabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sourceId
        case _if = "if"
        case actions
        case title
        case description
        case enabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sourceId, forKey: .sourceId)
        try container.encode(_if, forKey: ._if)
        try container.encode(actions, forKey: .actions)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(enabled, forKey: .enabled)
    }
}

