//
// DeleteFunctionV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Delete a single Function. */
public struct DeleteFunctionV1Output: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case success = "SUCCESS"
    }
    /** The status of the operation. */
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

