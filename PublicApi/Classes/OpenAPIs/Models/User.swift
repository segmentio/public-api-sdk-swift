//
// User.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The user object. */
public struct User: Codable, JSONEncodable, Hashable {

    /** The unique identifier of this user.  Config API note: analogous to `name`. */
    public var id: String
    /** The human-readable name of this user. */
    public var name: String
    /** The email address associated with this user. */
    public var email: String
    /** The permissions associated with this user. */
    public var permissions: [PermissionV1]?

    public init(id: String, name: String, email: String, permissions: [PermissionV1]? = nil) {
        self.id = id
        self.name = name
        self.email = email
        self.permissions = permissions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case email
        case permissions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(permissions, forKey: .permissions)
    }
}

