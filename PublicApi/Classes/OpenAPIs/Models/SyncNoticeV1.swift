//
// SyncNoticeV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents a notice within a sync for a Source and Warehouse pair. */
public struct SyncNoticeV1: Codable, JSONEncodable, Hashable {

    /** The severity of the notice. */
    public var level: String
    /** The human-readable message that describes the notice. */
    public var message: String
    /** The timestamp of this sync notice's creation. */
    public var createdAt: String

    public init(level: String, message: String, createdAt: String) {
        self.level = level
        self.message = message
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case level
        case message
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(level, forKey: .level)
        try container.encode(message, forKey: .message)
        try container.encode(createdAt, forKey: .createdAt)
    }
}

