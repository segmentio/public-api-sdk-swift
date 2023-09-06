//
// GetSubscriptionRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetSubscriptionRequest: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case androidPush = "ANDROID_PUSH"
        case email = "EMAIL"
        case iosPush = "IOS_PUSH"
        case sms = "SMS"
        case whatsapp = "WHATSAPP"
    }
    /** Key is the phone number or email. */
    public var key: String
    /** Type is communication medium used. */
    public var type: ModelType

    public init(key: String, type: ModelType) {
        self.key = key
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(key, forKey: .key)
        try container.encode(type, forKey: .type)
    }
}

