//
// ListRulesFromTrackingPlanV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Lists a Tracking Plan&#39;s rules. */
public struct ListRulesFromTrackingPlanV1Output: Codable, JSONEncodable, Hashable {

    /** Rules associated with the given Tracking Plan. */
    public var rules: [RuleV1]
    public var pagination: Pagination

    public init(rules: [RuleV1], pagination: Pagination) {
        self.rules = rules
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rules
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(rules, forKey: .rules)
        try container.encode(pagination, forKey: .pagination)
    }
}

