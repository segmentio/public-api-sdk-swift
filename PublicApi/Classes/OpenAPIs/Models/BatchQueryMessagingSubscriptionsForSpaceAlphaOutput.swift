//
// BatchQueryMessagingSubscriptionsForSpaceAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Batch get response. */
public struct BatchQueryMessagingSubscriptionsForSpaceAlphaOutput: Codable, JSONEncodable, Hashable {

    /** Array of successful subscription status. */
    public var successes: [GetMessagingSubscriptionSuccessResponse]
    /** Validation errors due to invalid types or email/phone numbers. */
    public var failures: [GetMessagingSubscriptionFailureResponse]
    /** General errors when making the request such as invalid payload or wrong http method errors. */
    public var errors: [MessageSubscriptionResponseError]
    public var pagination: Pagination1?

    public init(successes: [GetMessagingSubscriptionSuccessResponse], failures: [GetMessagingSubscriptionFailureResponse], errors: [MessageSubscriptionResponseError], pagination: Pagination1? = nil) {
        self.successes = successes
        self.failures = failures
        self.errors = errors
        self.pagination = pagination
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case successes
        case failures
        case errors
        case pagination
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(successes, forKey: .successes)
        try container.encode(failures, forKey: .failures)
        try container.encode(errors, forKey: .errors)
        try container.encodeIfPresent(pagination, forKey: .pagination)
    }
}

