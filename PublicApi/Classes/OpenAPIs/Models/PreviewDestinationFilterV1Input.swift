//
// PreviewDestinationFilterV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Input of the Destination filter to preview. For guidance on using FQL, see the Segment documentation site. */
public struct PreviewDestinationFilterV1Input: Codable, JSONEncodable, Hashable {

    public var filter: Filter1
    /** The JSON payload to apply the filter to. */
    public var payload: [String: AnyCodable]

    public init(filter: Filter1, payload: [String: AnyCodable]) {
        self.filter = filter
        self.payload = payload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filter
        case payload
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(filter, forKey: .filter)
        try container.encode(payload, forKey: .payload)
    }
}

