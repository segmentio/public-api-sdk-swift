//
// ListRolesV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the list of roles. */
public struct ListRolesV1Output: Codable, JSONEncodable, Hashable {

    /** The list of roles. */
    public var roles: [RoleV1]
    public var pagination: Pagination

    public init(roles: [RoleV1], pagination: Pagination) {
        self.roles = roles
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roles
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roles, forKey: .roles)
        try container.encode(pagination, forKey: .pagination)
    }
}

