//
// ListReverseEtlModelsOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines the result of listing Models. */
public struct ListReverseEtlModelsOutput: Codable, JSONEncodable, Hashable {

    /** A list of Models that belong to the Workspace. */
    public var models: [ReverseEtlModel]
    public var pagination: Pagination1

    public init(models: [ReverseEtlModel], pagination: Pagination1) {
        self.models = models
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case models
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(models, forKey: .models)
        try container.encode(pagination, forKey: .pagination)
    }
}

