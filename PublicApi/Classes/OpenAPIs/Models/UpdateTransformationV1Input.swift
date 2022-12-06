//
// UpdateTransformationV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The input to update a Transformation. */
public struct UpdateTransformationV1Input: Codable, JSONEncodable, Hashable {

    /** The name of the Transformation. */
    public var name: String?
    /** The optional Source to be associated with the Transformation. */
    public var sourceId: String?
    /** The optional Destination metadata to be associated with the Transformation. */
    public var destinationMetadataId: String?
    /** If the Transformation should be enabled. */
    public var enabled: Bool?
    /** If statement ([FQL](https://segment.com/docs/config-api/fql/)) to match events.  For standard event matchers, use the following:   Track -\\> \"event='\\<eventName\\>'\"   Identify -\\> \"type='identify'\"   Group -\\> \"type='group'\" */
    public var _if: String?
    /** Optional new event name for renaming events. Works only for 'track' event type. */
    public var newEventName: String?
    /** Optional array for renaming properties collected by your events. */
    public var propertyRenames: [PropertyRenameV1]?
    /** Optional array for transforming properties and values collected by your events. Limited to 10 properties. */
    public var propertyValueTransformations: [PropertyValueTransformationV1]?

    public init(name: String? = nil, sourceId: String? = nil, destinationMetadataId: String? = nil, enabled: Bool? = nil, _if: String? = nil, newEventName: String? = nil, propertyRenames: [PropertyRenameV1]? = nil, propertyValueTransformations: [PropertyValueTransformationV1]? = nil) {
        self.name = name
        self.sourceId = sourceId
        self.destinationMetadataId = destinationMetadataId
        self.enabled = enabled
        self._if = _if
        self.newEventName = newEventName
        self.propertyRenames = propertyRenames
        self.propertyValueTransformations = propertyValueTransformations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case sourceId
        case destinationMetadataId
        case enabled
        case _if = "if"
        case newEventName
        case propertyRenames
        case propertyValueTransformations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(sourceId, forKey: .sourceId)
        try container.encodeIfPresent(destinationMetadataId, forKey: .destinationMetadataId)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(_if, forKey: ._if)
        try container.encodeIfPresent(newEventName, forKey: .newEventName)
        try container.encodeIfPresent(propertyRenames, forKey: .propertyRenames)
        try container.encodeIfPresent(propertyValueTransformations, forKey: .propertyValueTransformations)
    }
}
