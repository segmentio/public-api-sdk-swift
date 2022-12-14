//
// IdentifySourceSettingsV1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IdentifySourceSettingsV1: Codable, JSONEncodable, Hashable {

    public enum CommonEventOnViolations: String, Codable, CaseIterable {
        case allow = "ALLOW"
        case block = "BLOCK"
        case omitTraits = "OMIT_TRAITS"
    }
    /** Enable to allow unplanned identify traits.  Config API note: equal to `allowUnplannedIdentifyTraits`. */
    public var allowUnplannedTraits: Bool?
    /** Enable to allow identify traits on violations.  Config API note: equal to `allowIdentifyTraitsOnViolations`. */
    public var allowTraitsOnViolations: Bool?
    /** The common identify event on violations.  Config API note: equal to `commonIdentifyEventOnViolations`. */
    public var commonEventOnViolations: CommonEventOnViolations?

    public init(allowUnplannedTraits: Bool? = nil, allowTraitsOnViolations: Bool? = nil, commonEventOnViolations: CommonEventOnViolations? = nil) {
        self.allowUnplannedTraits = allowUnplannedTraits
        self.allowTraitsOnViolations = allowTraitsOnViolations
        self.commonEventOnViolations = commonEventOnViolations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case allowUnplannedTraits
        case allowTraitsOnViolations
        case commonEventOnViolations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(allowUnplannedTraits, forKey: .allowUnplannedTraits)
        try container.encodeIfPresent(allowTraitsOnViolations, forKey: .allowTraitsOnViolations)
        try container.encodeIfPresent(commonEventOnViolations, forKey: .commonEventOnViolations)
    }
}

