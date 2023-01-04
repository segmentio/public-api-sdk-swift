//
// AddPermissionsToUserGroupV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Adds a list of permissions to a user group. */
public struct AddPermissionsToUserGroupV1Input: Codable, JSONEncodable, Hashable {

    /** The permissions to add. */
    public var permissions: [PermissionInputV1]

    public init(permissions: [PermissionInputV1]) {
        self.permissions = permissions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case permissions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(permissions, forKey: .permissions)
    }
}

