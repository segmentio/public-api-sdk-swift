//
// GetInsertFunctionInstanceAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the insert Function instance. */
public struct GetInsertFunctionInstanceAlphaOutput: Codable, JSONEncodable, Hashable {

    public var insertFunctionInstance: InsertFunctionInstance2

    public init(insertFunctionInstance: InsertFunctionInstance2) {
        self.insertFunctionInstance = insertFunctionInstance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case insertFunctionInstance
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(insertFunctionInstance, forKey: .insertFunctionInstance)
    }
}

