//
// TopLevelAnalytics.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TopLevelAnalytics: Codable, JSONEncodable, Hashable {

    public var entered: Entered
    public var completed: Completed
    public var inProgress: InProgress
    public var exited: Exited?

    public init(entered: Entered, completed: Completed, inProgress: InProgress, exited: Exited? = nil) {
        self.entered = entered
        self.completed = completed
        self.inProgress = inProgress
        self.exited = exited
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case entered
        case completed
        case inProgress
        case exited
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(entered, forKey: .entered)
        try container.encode(completed, forKey: .completed)
        try container.encode(inProgress, forKey: .inProgress)
        try container.encodeIfPresent(exited, forKey: .exited)
    }
}

