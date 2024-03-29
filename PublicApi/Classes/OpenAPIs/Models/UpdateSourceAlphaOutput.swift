//
// UpdateSourceAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the updated Source. */
public struct UpdateSourceAlphaOutput: Codable, JSONEncodable, Hashable {

    public var source: Source4

    public init(source: Source4) {
        self.source = source
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case source
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(source, forKey: .source)
    }
}

