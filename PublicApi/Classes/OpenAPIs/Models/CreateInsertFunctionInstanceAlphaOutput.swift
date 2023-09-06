//
// CreateInsertFunctionInstanceAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Creates an insert Function instance. */
public struct CreateInsertFunctionInstanceAlphaOutput: Codable, JSONEncodable, Hashable {

    public var insertFunctionInstance: InsertFunctionInstance

    public init(insertFunctionInstance: InsertFunctionInstance) {
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
