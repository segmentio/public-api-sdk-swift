//
// PermissionResourceV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The most basic representation of a resource belonging to a set of permissions. */
public struct PermissionResourceV1: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case function = "FUNCTION"
        case source = "SOURCE"
        case space = "SPACE"
        case warehouse = "WAREHOUSE"
        case workspace = "WORKSPACE"
    }
    /** The id of this resource. */
    public var id: String
    /** The type for this resource. */
    public var type: ModelType
    /** The labels that further refine access to this resource. Labels are exclusive to Workspace-level permissions. */
    public var labels: [AllowedLabelBeta]?

    public init(id: String, type: ModelType, labels: [AllowedLabelBeta]? = nil) {
        self.id = id
        self.type = type
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}

