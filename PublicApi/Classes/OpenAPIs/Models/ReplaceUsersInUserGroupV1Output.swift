//
// ReplaceUsersInUserGroupV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the updated user group. */
public struct ReplaceUsersInUserGroupV1Output: Codable, JSONEncodable, Hashable {

    public var userGroup: UserGroup1

    public init(userGroup: UserGroup1) {
        self.userGroup = userGroup
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userGroup
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userGroup, forKey: .userGroup)
    }
}

