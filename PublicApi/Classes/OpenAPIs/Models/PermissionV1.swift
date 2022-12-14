//
// PermissionV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A registered set of permissions for a subject, extending a role to a resource. */
public struct PermissionV1: Codable, JSONEncodable, Hashable {

    /** The name of the role associated with this permission. */
    public var roleName: String
    /** The id of the role associated with this permission. */
    public var roleId: String
    /** The resources associated with this permission. */
    public var resources: [PermissionResourceV1]
    /** The labels to attach to this permission. */
    public var labels: [AllowedLabelBeta]?

    public init(roleName: String, roleId: String, resources: [PermissionResourceV1], labels: [AllowedLabelBeta]? = nil) {
        self.roleName = roleName
        self.roleId = roleId
        self.resources = resources
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roleName
        case roleId
        case resources
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roleName, forKey: .roleName)
        try container.encode(roleId, forKey: .roleId)
        try container.encode(resources, forKey: .resources)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}

