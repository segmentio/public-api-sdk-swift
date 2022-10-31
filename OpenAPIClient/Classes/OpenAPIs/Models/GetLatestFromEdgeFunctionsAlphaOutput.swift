//
// GetLatestFromEdgeFunctionsAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Output for GetLatestFromEdgeFunctions. */
public struct GetLatestFromEdgeFunctionsAlphaOutput: Codable, JSONEncodable, Hashable {

    public var edgeFunctions: EdgeFunctions1

    public init(edgeFunctions: EdgeFunctions1) {
        self.edgeFunctions = edgeFunctions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case edgeFunctions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(edgeFunctions, forKey: .edgeFunctions)
    }
}

