//
// GetAudiencePreviewAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Output when reading an audience preview. */
public struct GetAudiencePreviewAlphaOutput: Codable, JSONEncodable, Hashable {

    public var audiencePreview: AudiencePreview1

    public init(audiencePreview: AudiencePreview1) {
        self.audiencePreview = audiencePreview
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case audiencePreview
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(audiencePreview, forKey: .audiencePreview)
    }
}

