//
// DeleteUserGroupV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the status of the completed deletion operation. */
public struct DeleteUserGroupV1Output: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case success = "SUCCESS"
    }
    /** A flag indicating the status of a successful deletion operation. */
    public var status: Status

    public init(status: Status) {
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(status, forKey: .status)
    }
}

