//
// SupportedPlatforms.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Platforms from which the Destination receives events.  Config API note: equal to &#x60;platforms&#x60;. */
public struct SupportedPlatforms: Codable, JSONEncodable, Hashable {

    /** Whether this Destination supports browser events. */
    public var browser: Bool?
    /** Whether this Destination supports server events. */
    public var server: Bool?
    /** Whether this Destination supports mobile events. */
    public var mobile: Bool?
    /** Whether this Destination supports Warehouse events. */
    public var warehouse: Bool?
    /** Whether this Destination supports cloud app object events. */
    public var cloudAppObject: Bool?

    public init(browser: Bool? = nil, server: Bool? = nil, mobile: Bool? = nil, warehouse: Bool? = nil, cloudAppObject: Bool? = nil) {
        self.browser = browser
        self.server = server
        self.mobile = mobile
        self.warehouse = warehouse
        self.cloudAppObject = cloudAppObject
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case browser
        case server
        case mobile
        case warehouse
        case cloudAppObject
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(browser, forKey: .browser)
        try container.encodeIfPresent(server, forKey: .server)
        try container.encodeIfPresent(mobile, forKey: .mobile)
        try container.encodeIfPresent(warehouse, forKey: .warehouse)
        try container.encodeIfPresent(cloudAppObject, forKey: .cloudAppObject)
    }
}

