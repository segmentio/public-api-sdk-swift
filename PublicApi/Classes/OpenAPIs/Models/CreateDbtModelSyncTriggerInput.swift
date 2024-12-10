//
// CreateDbtModelSyncTriggerInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Input for the createDbtModelSyncTriggerBySourceId endpoint. */
public struct CreateDbtModelSyncTriggerInput: Codable, JSONEncodable, Hashable {

    /** The Source id to trigger a dbt model sync. */
    public var sourceId: String

    public init(sourceId: String) {
        self.sourceId = sourceId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sourceId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sourceId, forKey: .sourceId)
    }
}
