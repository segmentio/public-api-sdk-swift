//
// JourneyVersionOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct JourneyVersionOutput: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case archived = "ARCHIVED"
        case draft = "DRAFT"
        case entryPaused = "ENTRY_PAUSED"
        case published = "PUBLISHED"
    }
    public var id: String
    public var version: Double
    public var status: Status
    public var definition: Definition7
    public var createdAt: String
    public var updatedAt: String?
    public var createdBy: String
    public var updatedBy: String?

    public init(id: String, version: Double, status: Status, definition: Definition7, createdAt: String, updatedAt: String? = nil, createdBy: String, updatedBy: String? = nil) {
        self.id = id
        self.version = version
        self.status = status
        self.definition = definition
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.createdBy = createdBy
        self.updatedBy = updatedBy
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case version
        case status
        case definition
        case createdAt
        case updatedAt
        case createdBy
        case updatedBy
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(version, forKey: .version)
        try container.encode(status, forKey: .status)
        try container.encode(definition, forKey: .definition)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encode(createdBy, forKey: .createdBy)
        try container.encodeIfPresent(updatedBy, forKey: .updatedBy)
    }
}

