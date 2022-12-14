//
// APICallSnapshotV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A snapshot of the number of API calls for a given Workspace. */
public struct APICallSnapshotV1: Codable, JSONEncodable, Hashable {

    /** A bigint of the number of API calls in this snapshot. */
    public var apiCalls: String
    /** Timestamp of this snapshot within the billing cycle in the ISO-8601 format. */
    public var timestamp: String

    public init(apiCalls: String, timestamp: String) {
        self.apiCalls = apiCalls
        self.timestamp = timestamp
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case apiCalls
        case timestamp
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(apiCalls, forKey: .apiCalls)
        try container.encode(timestamp, forKey: .timestamp)
    }
}

