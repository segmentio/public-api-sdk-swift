//
// UpdateTransformationV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The output of an updated Transformation. */
public struct UpdateTransformationV1Output: Codable, JSONEncodable, Hashable {

    public var transformation: Transformation4

    public init(transformation: Transformation4) {
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

