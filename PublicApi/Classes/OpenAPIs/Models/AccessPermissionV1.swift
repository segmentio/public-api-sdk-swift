//
// AccessPermissionV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A permission governing access to a resource. */
public struct AccessPermissionV1: Codable, JSONEncodable, Hashable {

    /** The id of the role that applies to this permission. */
    public var roleId: String
    /** The name of the role that applies to this permission. */
    public var roleName: String
    /** The resources included with this permission. */
    public var resources: [PermissionResourceV1]

    public init(roleId: String, roleName: String, resources: [PermissionResourceV1]) {
        self.roleId = roleId
        self.roleName = roleName
        self.resources = resources
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roleId
        case roleName
        case resources
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roleId, forKey: .roleId)
        try container.encode(roleName, forKey: .roleName)
        try container.encode(resources, forKey: .resources)
    }
}

