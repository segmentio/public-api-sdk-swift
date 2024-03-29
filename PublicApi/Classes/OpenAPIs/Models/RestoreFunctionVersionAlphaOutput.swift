//
// RestoreFunctionVersionAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Restore version output. */
public struct RestoreFunctionVersionAlphaOutput: Codable, JSONEncodable, Hashable {

    public var version: Version1

    public init(version: Version1) {
        self.version = version
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case version
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(version, forKey: .version)
    }
}

