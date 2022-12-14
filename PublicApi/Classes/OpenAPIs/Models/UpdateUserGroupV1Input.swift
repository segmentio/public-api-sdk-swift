//
// UpdateUserGroupV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Updates a user group with a given id. */
public struct UpdateUserGroupV1Input: Codable, JSONEncodable, Hashable {

    /** The intended value to rename the user group to. */
    public var name: String

    public init(name: String) {
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
    }
}

