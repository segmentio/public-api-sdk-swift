//
// RemoveRuleV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents the parameters needed to identify a rule on the backend-side. */
public struct RemoveRuleV1: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case common = "COMMON"
        case group = "GROUP"
        case identify = "IDENTIFY"
        case page = "PAGE"
        case screen = "SCREEN"
        case track = "TRACK"
    }
    public var type: ModelType
    public var key: String?
    public var version: Double

    public init(type: ModelType, key: String? = nil, version: Double) {
        self.type = type
        self.key = key
        self.version = version
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case key
        case version
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(key, forKey: .key)
        try container.encode(version, forKey: .version)
    }
}

