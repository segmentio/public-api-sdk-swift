//
// ReplacePermissionsForUserGroupV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the user group&#39;s permissions, including the updated permissions. */
public struct ReplacePermissionsForUserGroupV1Output: Codable, JSONEncodable, Hashable {

    /** The updated permissions. */
    public var permissions: [AccessPermissionV1]

    public init(permissions: [AccessPermissionV1]) {
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

