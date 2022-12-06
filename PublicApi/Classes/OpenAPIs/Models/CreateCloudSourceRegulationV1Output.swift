//
// CreateCloudSourceRegulationV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The output of a create Cloud Source regulation call. */
public struct CreateCloudSourceRegulationV1Output: Codable, JSONEncodable, Hashable {

    /** The id of the created regulation. */
    public var regulateId: String

    public init(regulateId: String) {
        self.regulateId = regulateId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case regulateId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(regulateId, forKey: .regulateId)
    }
}

