//
// GetMessagingSubscriptionFailureResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetMessagingSubscriptionFailureResponse: Codable, JSONEncodable, Hashable {

    /** Key is the phone number or email. */
    public var key: String
    /** This will be the exact type as given in the request. */
    public var type: String
    /** Per key errors, such as validation errors. */
    public var errors: [MessageSubscriptionResponseError]

    public init(key: String, type: String, errors: [MessageSubscriptionResponseError]) {
        self.key = key
        self.type = type
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case type
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(key, forKey: .key)
        try container.encode(type, forKey: .type)
        try container.encode(errors, forKey: .errors)
    }
}

