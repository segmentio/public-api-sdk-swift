//
// GetEventsVolumeFromWorkspaceV1Query.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** GetEventVolumeOutputQuery represents the input query sent to output. */
public struct GetEventsVolumeFromWorkspaceV1Query: Codable, JSONEncodable, Hashable {

    public enum Granularity: String, Codable, CaseIterable {
        case day = "day"
        case hour = "hour"
        case minute = "minute"
    }
    /** Workspace being requested. */
    public var workspaceId: String
    /** Granularity corresponds to the requested bucket granularity. */
    public var granularity: Granularity
    /** StartTime is the ISO8601 formatted timestamp corresponding to the beginning of the requested time frame, inclusive. */
    public var startTime: String
    /** EndTime is the ISO8601 formatted timestamp corresponding to the end of the requested time frame, noninclusive. */
    public var endTime: String
    /** GroupBy is a comma-delimited list of strings representing the dimensions to group the result by. The current options are: `eventName` or `eventType`. */
    public var groupBy: [String]?
    /** List of strings which allow you to restrict the result to just the given Sources. */
    public var sourceId: [String]?
    /** EventName is a list of strings which allow you to restrict the result to just the given event names. */
    public var eventName: [String]?
    /** EventType is a list of strings which allow you to restrict the result to just the given event types. */
    public var eventType: [String]?
    /** AppVersion is a list of strings which allow you to restrict the result to just the given application versions. */
    public var appVersion: [String]?
    /** Limit is the total number of items in the result. */
    public var limit: Double?

    public init(workspaceId: String, granularity: Granularity, startTime: String, endTime: String, groupBy: [String]? = nil, sourceId: [String]? = nil, eventName: [String]? = nil, eventType: [String]? = nil, appVersion: [String]? = nil, limit: Double? = nil) {
        self.workspaceId = workspaceId
        self.granularity = granularity
        self.startTime = startTime
        self.endTime = endTime
        self.groupBy = groupBy
        self.sourceId = sourceId
        self.eventName = eventName
        self.eventType = eventType
        self.appVersion = appVersion
        self.limit = limit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case workspaceId
        case granularity
        case startTime
        case endTime
        case groupBy
        case sourceId
        case eventName
        case eventType
        case appVersion
        case limit
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(workspaceId, forKey: .workspaceId)
        try container.encode(granularity, forKey: .granularity)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encodeIfPresent(groupBy, forKey: .groupBy)
        try container.encodeIfPresent(sourceId, forKey: .sourceId)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encodeIfPresent(eventType, forKey: .eventType)
        try container.encodeIfPresent(appVersion, forKey: .appVersion)
        try container.encodeIfPresent(limit, forKey: .limit)
    }
}

