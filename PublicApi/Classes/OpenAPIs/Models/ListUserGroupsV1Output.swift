//
// ListUserGroupsV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns a list of user groups with the given Workspace id. */
public struct ListUserGroupsV1Output: Codable, JSONEncodable, Hashable {

    /** The user group returned from the query. */
    public var userGroups: [UserGroupV1]
    public var pagination: Pagination1

    public init(userGroups: [UserGroupV1], pagination: Pagination1) {
        self.userGroups = userGroups
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userGroups
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userGroups, forKey: .userGroups)
        try container.encode(pagination, forKey: .pagination)
    }
}

