//
// DestinationStatusV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** DestinationStatus represents status of each Destination in a stream. */
public struct DestinationStatusV1: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case failed = "FAILED"
        case finished = "FINISHED"
        case initialized = "INITIALIZED"
        case invalid = "INVALID"
        case notSupported = "NOT_SUPPORTED"
        case partialSuccess = "PARTIAL_SUCCESS"
        case running = "RUNNING"
    }
    public var name: String
    public var id: String
    public var status: Status
    public var errString: String
    public var finishedAt: String

    public init(name: String, id: String, status: Status, errString: String, finishedAt: String) {
        self.name = name
        self.id = id
        self.status = status
        self.errString = errString
        self.finishedAt = finishedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case id
        case status
        case errString
        case finishedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(id, forKey: .id)
        try container.encode(status, forKey: .status)
        try container.encode(errString, forKey: .errString)
        try container.encode(finishedAt, forKey: .finishedAt)
    }
}

