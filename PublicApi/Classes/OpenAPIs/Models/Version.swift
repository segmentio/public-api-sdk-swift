//
// Version.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Functions version. */
public struct Version: Codable, JSONEncodable, Hashable {

    /** An identifier for this version. */
    public var id: String
    /** Author of this version. */
    public var author: String?
    /** Source code of this version. */
    public var code: String
    /** The deployed status of this version. */
    public var isDeployed: Bool?
    /** The time of this Version's creation. */
    public var createdAt: String?
    /** The time of this Version's latest update. */
    public var updatedAt: String?
    /** The time of this Version's last deployment. */
    public var deployedAt: String?

    public init(id: String, author: String? = nil, code: String, isDeployed: Bool? = nil, createdAt: String? = nil, updatedAt: String? = nil, deployedAt: String? = nil) {
        self.id = id
        self.author = author
        self.code = code
        self.isDeployed = isDeployed
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deployedAt = deployedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case author
        case code
        case isDeployed
        case createdAt
        case updatedAt
        case deployedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(author, forKey: .author)
        try container.encode(code, forKey: .code)
        try container.encodeIfPresent(isDeployed, forKey: .isDeployed)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(deployedAt, forKey: .deployedAt)
    }
}

