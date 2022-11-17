//
// GetTransformationV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The output of Transformation retrieval. */
public struct GetTransformationV1Output: Codable, JSONEncodable, Hashable {

    public var transformation: Transformation3

    public init(transformation: Transformation3) {
        self.transformation = transformation
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transformation
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(transformation, forKey: .transformation)
    }
}

