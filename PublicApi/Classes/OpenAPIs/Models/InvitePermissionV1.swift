//
// InvitePermissionV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines a permission to apply to the user in an invite. */
public struct InvitePermissionV1: Codable, JSONEncodable, Hashable {

    /** The id of the role. */
    public var roleId: String
    /** The resources to grant the invited users access to. */
    public var resources: [ResourceV1]?
    /** The labels that determine which resources to grant users access to. */
    public var labels: [AllowedLabelBeta]?

    public init(roleId: String, resources: [ResourceV1]? = nil, labels: [AllowedLabelBeta]? = nil) {
        self.roleId = roleId
        self.resources = resources
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roleId
        case resources
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roleId, forKey: .roleId)
        try container.encodeIfPresent(resources, forKey: .resources)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}

