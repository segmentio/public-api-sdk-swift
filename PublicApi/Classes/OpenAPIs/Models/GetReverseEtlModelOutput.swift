//
// GetReverseEtlModelOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines the result of getting a Model. */
public struct GetReverseEtlModelOutput: Codable, JSONEncodable, Hashable {

    public var reverseEtlModel: ReverseEtlModel1

    public init(reverseEtlModel: ReverseEtlModel1) {
        self.reverseEtlModel = reverseEtlModel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reverseEtlModel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(reverseEtlModel, forKey: .reverseEtlModel)
    }
}
