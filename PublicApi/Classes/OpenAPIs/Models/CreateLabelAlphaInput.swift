//
// CreateLabelAlphaInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Creates a new label in the current Workspace. */
public struct CreateLabelAlphaInput: Codable, JSONEncodable, Hashable {

    public var label: Label

    public init(label: Label) {
        self.label = label
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case label
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(label, forKey: .label)
    }
}

