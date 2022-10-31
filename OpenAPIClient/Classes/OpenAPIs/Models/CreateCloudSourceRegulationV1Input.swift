//
// CreateCloudSourceRegulationV1Input.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The input to create a Cloud Source-scoped regulation. */
public struct CreateCloudSourceRegulationV1Input: Codable, JSONEncodable, Hashable {

    public enum RegulationType: String, Codable, CaseIterable {
        case bulkDeleteOnly = "BULK_DELETE_ONLY"
        case deleteInternal = "DELETE_INTERNAL"
        case deleteOnly = "DELETE_ONLY"
        case suppressOnly = "SUPPRESS_ONLY"
        case suppressWithDelete = "SUPPRESS_WITH_DELETE"
        case unsuppress = "UNSUPPRESS"
    }
    public enum SubjectType: String, Codable, CaseIterable {
        case objectId = "OBJECT_ID"
    }
    /** The regulation type to create. */
    public var regulationType: RegulationType
    /** The subject type. Must be `objectId` for Cloud Sources. */
    public var subjectType: SubjectType?
    /** The user or object ids of the subjects to regulate.  Config API note: equal to `parent` but allows an array. */
    public var subjectIds: [String]?
    /** The Cloud Source collection to regulate. */
    public var collection: String

    public init(regulationType: RegulationType, subjectType: SubjectType? = nil, subjectIds: [String]? = nil, collection: String) {
        self.regulationType = regulationType
        self.subjectType = subjectType
        self.subjectIds = subjectIds
        self.collection = collection
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case regulationType
        case subjectType
        case subjectIds
        case collection
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(regulationType, forKey: .regulationType)
        try container.encodeIfPresent(subjectType, forKey: .subjectType)
        try container.encodeIfPresent(subjectIds, forKey: .subjectIds)
        try container.encode(collection, forKey: .collection)
    }
}

