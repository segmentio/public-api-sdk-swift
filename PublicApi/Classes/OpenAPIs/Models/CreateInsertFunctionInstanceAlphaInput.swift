//
// CreateInsertFunctionInstanceAlphaInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Creates an insert Function instance. */
public struct CreateInsertFunctionInstanceAlphaInput: Codable, JSONEncodable, Hashable {

    /** Insert Function id to which this instance is associated. */
    public var functionId: String
    /** The Source or Destination id to be connected. */
    public var integrationId: String
    /** Whether this insert Function instance should be enabled for the Destination. */
    public var enabled: Bool?
    /** Defines the display name of the insert Function instance. */
    public var name: String
    /** An object that contains settings for this insert Function instance based on the settings present in the insert Function class. */
    public var settings: [String: AnyCodable]

    public init(functionId: String, integrationId: String, enabled: Bool? = nil, name: String, settings: [String: AnyCodable]) {
        self.functionId = functionId
        self.integrationId = integrationId
        self.enabled = enabled
        self.name = name
        self.settings = settings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case functionId
        case integrationId
        case enabled
        case name
        case settings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(functionId, forKey: .functionId)
        try container.encode(integrationId, forKey: .integrationId)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encode(name, forKey: .name)
        try container.encode(settings, forKey: .settings)
    }
}

