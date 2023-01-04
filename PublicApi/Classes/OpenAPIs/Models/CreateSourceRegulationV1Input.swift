//
// CreateSourceRegulationV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The input to create a Source-scoped regulation. */
public struct CreateSourceRegulationV1Input: Codable, JSONEncodable, Hashable {

    public enum RegulationType: String, Codable, CaseIterable {
        case deleteInternal = "DELETE_INTERNAL"
        case deleteOnly = "DELETE_ONLY"
        case suppressOnly = "SUPPRESS_ONLY"
        case suppressWithDelete = "SUPPRESS_WITH_DELETE"
        case unsuppress = "UNSUPPRESS"
    }
    public enum SubjectType: String, Codable, CaseIterable {
        case userId = "USER_ID"
    }
    /** The regulation type to create. */
    public var regulationType: RegulationType
    /** The subject type. */
    public var subjectType: SubjectType
    /** The user or object ids of the subjects to regulate.  Config API note: equal to `parent` but allows an array. */
    public var subjectIds: [String]

    public init(regulationType: RegulationType, subjectType: SubjectType, subjectIds: [String]) {
        self.regulationType = regulationType
        self.subjectType = subjectType
        self.subjectIds = subjectIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case regulationType
        case subjectType
        case subjectIds
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(regulationType, forKey: .regulationType)
        try container.encode(subjectType, forKey: .subjectType)
        try container.encode(subjectIds, forKey: .subjectIds)
    }
}

