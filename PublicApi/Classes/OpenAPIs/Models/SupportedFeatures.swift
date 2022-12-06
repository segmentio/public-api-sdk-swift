//
// SupportedFeatures.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Features that this Destination supports.  Config API note: holds &#x60;browserUnbundling&#x60; fields. */
public struct SupportedFeatures: Codable, JSONEncodable, Hashable {

    public enum CloudModeInstances: String, Codable, CaseIterable {
        case _0 = "0"
        case _1 = "1"
        case multiple = "MULTIPLE"
        case _none = "NONE"
        case single = "SINGLE"
    }
    public enum DeviceModeInstances: String, Codable, CaseIterable {
        case _0 = "0"
        case _1 = "1"
        case _none = "NONE"
        case single = "SINGLE"
    }
    /** This Destination's support level for cloud mode instances. The values '0' and 'NONE', and '1' and 'SINGLE' are equivalent. */
    public var cloudModeInstances: CloudModeInstances?
    /** This Destination's support level for device mode instances. Support for multiple device mode instances is currently not planned. The values '0' and 'NONE', and '1' and 'SINGLE' are equivalent. */
    public var deviceModeInstances: DeviceModeInstances?
    /** Whether this Destination supports replays. */
    public var replay: Bool?
    /** Whether this Destination supports browser unbundling. */
    public var browserUnbundling: Bool?
    /** Whether this Destination supports public browser unbundling. */
    public var browserUnbundlingPublic: Bool?

    public init(cloudModeInstances: CloudModeInstances? = nil, deviceModeInstances: DeviceModeInstances? = nil, replay: Bool? = nil, browserUnbundling: Bool? = nil, browserUnbundlingPublic: Bool? = nil) {
        self.cloudModeInstances = cloudModeInstances
        self.deviceModeInstances = deviceModeInstances
        self.replay = replay
        self.browserUnbundling = browserUnbundling
        self.browserUnbundlingPublic = browserUnbundlingPublic
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cloudModeInstances
        case deviceModeInstances
        case replay
        case browserUnbundling
        case browserUnbundlingPublic
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(cloudModeInstances, forKey: .cloudModeInstances)
        try container.encodeIfPresent(deviceModeInstances, forKey: .deviceModeInstances)
        try container.encodeIfPresent(replay, forKey: .replay)
        try container.encodeIfPresent(browserUnbundling, forKey: .browserUnbundling)
        try container.encodeIfPresent(browserUnbundlingPublic, forKey: .browserUnbundlingPublic)
    }
}

