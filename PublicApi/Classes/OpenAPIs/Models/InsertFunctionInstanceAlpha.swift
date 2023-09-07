//
// InsertFunctionInstanceAlpha.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InsertFunctionInstanceAlpha: Codable, JSONEncodable, Hashable {

    public var id: String
    public var name: String?
    public var integrationId: String
    public var classId: String
    public var enabled: Bool
    public var createdAt: String
    public var updatedAt: String
    public var settings: [String: AnyCodable]
    public var encryptedSettings: [String: AnyCodable]

    public init(id: String, name: String? = nil, integrationId: String, classId: String, enabled: Bool, createdAt: String, updatedAt: String, settings: [String: AnyCodable], encryptedSettings: [String: AnyCodable]) {
        self.id = id
        self.name = name
        self.integrationId = integrationId
        self.classId = classId
        self.enabled = enabled
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.settings = settings
        self.encryptedSettings = encryptedSettings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case integrationId
        case classId
        case enabled
        case createdAt
        case updatedAt
        case settings
        case encryptedSettings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(integrationId, forKey: .integrationId)
        try container.encode(classId, forKey: .classId)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(updatedAt, forKey: .updatedAt)
        try container.encode(settings, forKey: .settings)
        try container.encode(encryptedSettings, forKey: .encryptedSettings)
    }
}

