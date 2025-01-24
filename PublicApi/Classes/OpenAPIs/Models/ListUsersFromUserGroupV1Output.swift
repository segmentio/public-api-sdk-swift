//
// ListUsersFromUserGroupV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the members of a user group with the given group id. */
public struct ListUsersFromUserGroupV1Output: Codable, JSONEncodable, Hashable {

    /** The users of the user group. */
    public var users: [MinimalUserV1]
    public var pagination: Pagination2

    public init(users: [MinimalUserV1], pagination: Pagination2) {
        self.users = users
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case users
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(users, forKey: .users)
        try container.encode(pagination, forKey: .pagination)
    }
}

