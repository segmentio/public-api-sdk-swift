//
// SyncLoadPhase.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Object representing the load phase + details. */
public struct SyncLoadPhase: Codable, JSONEncodable, Hashable {

    /** Counts the subset of records successfully delivered to the downstream Destination. */
    public var deliverSuccessCount: String
    /** Counts the subset of records status that failed to be delivered by either receiving a permanent error (for example, 400 Bad Request) or by exhausting all retries for temporary errors (for example, 429 Too Many Requests). */
    public var deliverFailureCount: String
    /** Error code indicates a fatal sync error code, if applicable. */
    public var errorCode: String
    /** Time that the load phase started. */
    public var startedAt: String
    /** Time that the load phase finished. */
    public var finishedAt: String

    public init(deliverSuccessCount: String, deliverFailureCount: String, errorCode: String, startedAt: String, finishedAt: String) {
        self.deliverSuccessCount = deliverSuccessCount
        self.deliverFailureCount = deliverFailureCount
        self.errorCode = errorCode
        self.startedAt = startedAt
        self.finishedAt = finishedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deliverSuccessCount
        case deliverFailureCount
        case errorCode
        case startedAt
        case finishedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(deliverSuccessCount, forKey: .deliverSuccessCount)
        try container.encode(deliverFailureCount, forKey: .deliverFailureCount)
        try container.encode(errorCode, forKey: .errorCode)
        try container.encode(startedAt, forKey: .startedAt)
        try container.encode(finishedAt, forKey: .finishedAt)
    }
}

