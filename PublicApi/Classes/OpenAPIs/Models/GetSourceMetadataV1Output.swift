//
// GetSourceMetadataV1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the Source catalog item looked up by id. */
public struct GetSourceMetadataV1Output: Codable, JSONEncodable, Hashable {

    public var sourceMetadata: SourceMetadata

    public init(sourceMetadata: SourceMetadata) {
        self.sourceMetadata = sourceMetadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sourceMetadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sourceMetadata, forKey: .sourceMetadata)
    }
}

