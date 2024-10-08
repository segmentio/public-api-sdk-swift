//
// DeleteFilterByIdOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Output for DeleteFilterById. */
public struct DeleteFilterByIdOutput: Codable, JSONEncodable, Hashable {

    /** Filter deleted by filter id. */
    public var deleted: Bool

    public init(deleted: Bool) {
        self.deleted = deleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deleted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(deleted, forKey: .deleted)
    }
}

