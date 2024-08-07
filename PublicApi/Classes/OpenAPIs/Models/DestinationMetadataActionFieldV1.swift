//
// DestinationMetadataActionFieldV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents a field used in configuring an action. */
public struct DestinationMetadataActionFieldV1: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case boolean = "BOOLEAN"
        case datetime = "DATETIME"
        case hidden = "HIDDEN"
        case integer = "INTEGER"
        case number = "NUMBER"
        case object = "OBJECT"
        case password = "PASSWORD"
        case string = "STRING"
        case text = "TEXT"
    }
    /** The primary key of the field. */
    public var id: String
    /** The order this particular field is (used in the UI for displaying the fields in a specified order). */
    public var sortOrder: Double
    /** A unique machine-readable key for the field. Should ideally match the expected key in the action\\'s API request. */
    public var fieldKey: String
    /** A human-readable label for this value. */
    public var label: String
    /** The data type for this value. */
    public var type: ModelType
    /** A human-readable description of this value. You can use Markdown. */
    public var description: String
    /** An example value displayed but not saved. */
    public var placeholder: String?
    /** A default value that is saved the first time an action is created. */
    public var defaultValue: AnyCodable?
    /** Whether this field is required. */
    public var _required: Bool
    /** Whether a user can provide multiples of this field. */
    public var multiple: Bool
    /** A list of machine-readable value/label pairs to populate a static dropdown. */
    public var choices: AnyCodable?
    /** Whether this field should execute a dynamic request to fetch choices to populate a dropdown. When true, `choices` is ignored. */
    public var _dynamic: Bool
    /** Whether this field allows null values. */
    public var allowNull: Bool
    /** Whether the action field should be hidden or not. */
    public var hidden: Bool?

    public init(id: String, sortOrder: Double, fieldKey: String, label: String, type: ModelType, description: String, placeholder: String? = nil, defaultValue: AnyCodable? = nil, _required: Bool, multiple: Bool, choices: AnyCodable? = nil, _dynamic: Bool, allowNull: Bool, hidden: Bool? = nil) {
        self.id = id
        self.sortOrder = sortOrder
        self.fieldKey = fieldKey
        self.label = label
        self.type = type
        self.description = description
        self.placeholder = placeholder
        self.defaultValue = defaultValue
        self._required = _required
        self.multiple = multiple
        self.choices = choices
        self._dynamic = _dynamic
        self.allowNull = allowNull
        self.hidden = hidden
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case sortOrder
        case fieldKey
        case label
        case type
        case description
        case placeholder
        case defaultValue
        case _required = "required"
        case multiple
        case choices
        case _dynamic = "dynamic"
        case allowNull
        case hidden
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(sortOrder, forKey: .sortOrder)
        try container.encode(fieldKey, forKey: .fieldKey)
        try container.encode(label, forKey: .label)
        try container.encode(type, forKey: .type)
        try container.encode(description, forKey: .description)
        try container.encodeIfPresent(placeholder, forKey: .placeholder)
        try container.encodeIfPresent(defaultValue, forKey: .defaultValue)
        try container.encode(_required, forKey: ._required)
        try container.encode(multiple, forKey: .multiple)
        try container.encodeIfPresent(choices, forKey: .choices)
        try container.encode(_dynamic, forKey: ._dynamic)
        try container.encode(allowNull, forKey: .allowNull)
        try container.encodeIfPresent(hidden, forKey: .hidden)
    }
}

