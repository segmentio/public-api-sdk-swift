//
// CreateAudiencePreviewAlphaInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Input to create an audience preview. */
public struct CreateAudiencePreviewAlphaInput: Codable, JSONEncodable, Hashable {

    public enum AudienceType: String, Codable, CaseIterable {
        case accounts = "ACCOUNTS"
        case linked = "LINKED"
        case users = "USERS"
    }
    public var definition: Definition5
    /** Discriminator denoting the audience's product type.  Possible values: USERS, ACCOUNTS, LINKED. */
    public var audienceType: AudienceType
    public var options: Options3?

    public init(definition: Definition5, audienceType: AudienceType, options: Options3? = nil) {
        self.definition = definition
        self.audienceType = audienceType
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case definition
        case audienceType
        case options
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(definition, forKey: .definition)
        try container.encode(audienceType, forKey: .audienceType)
        try container.encodeIfPresent(options, forKey: .options)
    }
}

