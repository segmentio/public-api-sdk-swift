//
// CancelReverseETLSyncForModelInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines the parameters needed to cancel a sync for a RETL connection. */
public struct CancelReverseETLSyncForModelInput: Codable, JSONEncodable, Hashable {

    /** The reason for canceling the sync. - IncorrectModel = 0 - IncorrectDest = 1 - IncorrectKeys = 2 - IncorrectMapping = 3 - Other = 4 */
    public var reasonForCanceling: Double?

    public init(reasonForCanceling: Double? = nil) {
        self.reasonForCanceling = reasonForCanceling
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reasonForCanceling
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(reasonForCanceling, forKey: .reasonForCanceling)
    }
}
