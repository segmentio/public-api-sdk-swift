//
// GetDestinationV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns a single Destination by its id. */
public struct GetDestinationV1Output: Codable, JSONEncodable, Hashable {

    public var destination: Destination1

    public init(destination: Destination1) {
        self.destination = destination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case destination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(destination, forKey: .destination)
    }
}

