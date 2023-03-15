//
// RestoreFunctionVersionAlphaInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Restore a given Function version. */
public struct RestoreFunctionVersionAlphaInput: Codable, JSONEncodable, Hashable {

    /** An identifier for this version. */
    public var versionId: String

    public init(versionId: String) {
        self.versionId = versionId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case versionId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(versionId, forKey: .versionId)
    }
}

