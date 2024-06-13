//
// ListTransformationsBetaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Lists the Transformations associated with the current Workspace. */
public struct ListTransformationsBetaOutput: Codable, JSONEncodable, Hashable {

    /** A paginated list of Transformations. */
    public var transformations: [TransformationBeta]
    public var pagination: Pagination3

    public init(transformations: [TransformationBeta], pagination: Pagination3) {
        self.transformations = transformations
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transformations
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(transformations, forKey: .transformations)
        try container.encode(pagination, forKey: .pagination)
    }
}

