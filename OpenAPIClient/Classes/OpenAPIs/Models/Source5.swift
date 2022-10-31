//
// Source5.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The newly created Source. */
public struct Source5: Codable, JSONEncodable, Hashable {

    /** The id of the Source.  Config API note: analogous to `name`. */
    public var id: String
    /** The slug used to identify the Source in the Segment app.  Config API note: equal to `name`. */
    public var slug: String
    /** The name of the Source.  Config API note: equal to `displayName`. */
    public var name: String?
    public var metadata: Metadata1
    /** The id of the Workspace that owns the Source.  Config API note: equal to `parent`. */
    public var workspaceId: String
    /** Enable to receive data from the Source. */
    public var enabled: Bool
    /** The write keys used to send data from the Source. This field is left empty when the current token does not have the 'source admin' permission. */
    public var writeKeys: [String]
    /** The settings associated with the Source. */
    public var settings: Dictionary?
    /** A list of labels applied to the Source. */
    public var labels: [LabelV1]

    public init(id: String, slug: String, name: String? = nil, metadata: Metadata1, workspaceId: String, enabled: Bool, writeKeys: [String], settings: Dictionary? = nil, labels: [LabelV1]) {
        self.id = id
        self.slug = slug
        self.name = name
        self.metadata = metadata
        self.workspaceId = workspaceId
        self.enabled = enabled
        self.writeKeys = writeKeys
        self.settings = settings
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case slug
        case name
        case metadata
        case workspaceId
        case enabled
        case writeKeys
        case settings
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(slug, forKey: .slug)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(metadata, forKey: .metadata)
        try container.encode(workspaceId, forKey: .workspaceId)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(writeKeys, forKey: .writeKeys)
        try container.encodeIfPresent(settings, forKey: .settings)
        try container.encode(labels, forKey: .labels)
    }
}

