//
// ListAudiencesAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** List audiences endpoint output. */
public struct ListAudiencesAlphaOutput: Codable, JSONEncodable, Hashable {

    /** A list of audience summary results. */
    public var audiences: [AudienceSummary]
    public var pagination: Pagination

    public init(audiences: [AudienceSummary], pagination: Pagination) {
        self.audiences = audiences
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case audiences
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(audiences, forKey: .audiences)
        try container.encode(pagination, forKey: .pagination)
    }
}

