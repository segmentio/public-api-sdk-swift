//
// StatesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct StatesInner: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case exitRule = "EXIT_RULE"
    }
    public enum ExitType: String, Codable, CaseIterable {
        case audienceMembershipChange = "AUDIENCE_MEMBERSHIP_CHANGE"
    }
    public var type: ModelType
    public var destinations: [Destination]
    public var transitions: [Transitions]
    public var key: Key
    public var exitType: ExitType
    public var condition: String
    public var enabled: Bool
    public var concurrencyEnabled: Bool
    public var audienceId: String

    public init(type: ModelType, destinations: [Destination], transitions: [Transitions], key: Key, exitType: ExitType, condition: String, enabled: Bool, concurrencyEnabled: Bool, audienceId: String) {
        self.type = type
        self.destinations = destinations
        self.transitions = transitions
        self.key = key
        self.exitType = exitType
        self.condition = condition
        self.enabled = enabled
        self.concurrencyEnabled = concurrencyEnabled
        self.audienceId = audienceId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case destinations
        case transitions
        case key
        case exitType
        case condition
        case enabled
        case concurrencyEnabled
        case audienceId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(destinations, forKey: .destinations)
        try container.encode(transitions, forKey: .transitions)
        try container.encode(key, forKey: .key)
        try container.encode(exitType, forKey: .exitType)
        try container.encode(condition, forKey: .condition)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(concurrencyEnabled, forKey: .concurrencyEnabled)
        try container.encode(audienceId, forKey: .audienceId)
    }
}

