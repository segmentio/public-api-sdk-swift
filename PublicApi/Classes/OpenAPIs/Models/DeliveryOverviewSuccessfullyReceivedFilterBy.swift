//
// DeliveryOverviewSuccessfullyReceivedFilterBy.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The &#x60;DeliveryOverviewSuccessfullyReceivedFilterBy&#x60; object is a map of the filterable fields and their values for the Successfully Received pipeline step. */
public struct DeliveryOverviewSuccessfullyReceivedFilterBy: Codable, JSONEncodable, Hashable {

    /** A list of strings of event names. */
    public var eventName: [String]?
    /** A list of strings of event types. Valid options are: `alias`, `group`, `identify`, `page`, `screen`, and `track`. */
    public var eventType: [String]?
    /** A list of strings of app versions. */
    public var appVersion: [String]?

    public init(eventName: [String]? = nil, eventType: [String]? = nil, appVersion: [String]? = nil) {
        self.eventName = eventName
        self.eventType = eventType
        self.appVersion = appVersion
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventName
        case eventType
        case appVersion
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encodeIfPresent(eventType, forKey: .eventType)
        try container.encodeIfPresent(appVersion, forKey: .appVersion)
    }
}
