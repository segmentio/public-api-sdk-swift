//
// DeleteInsertFunctionInstance200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DeleteInsertFunctionInstance200Response: Codable, JSONEncodable, Hashable {

    public var data: DeleteInsertFunctionInstanceAlphaOutput?

    public init(data: DeleteInsertFunctionInstanceAlphaOutput? = nil) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

