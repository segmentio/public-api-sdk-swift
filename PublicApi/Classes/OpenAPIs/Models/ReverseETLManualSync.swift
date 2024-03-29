//
// ReverseETLManualSync.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The reverse ETL connection job that was manually started. */
public struct ReverseETLManualSync: Codable, JSONEncodable, Hashable {

    /** A datetime that indicates when the job was triggered. */
    public var startedAt: String
    /** The unique id for the sync that was triggered. */
    public var syncId: String

    public init(startedAt: String, syncId: String) {
        self.startedAt = startedAt
        self.syncId = syncId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startedAt
        case syncId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(startedAt, forKey: .startedAt)
        try container.encode(syncId, forKey: .syncId)
    }
}

