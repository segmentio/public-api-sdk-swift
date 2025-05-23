//
// Download.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An object containing the downloaded data. */
public struct Download: Codable, JSONEncodable, Hashable {

    /** List of presigned URLs from S3. */
    public var urls: [String]

    public init(urls: [String]) {
        self.urls = urls
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case urls
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(urls, forKey: .urls)
    }
}

