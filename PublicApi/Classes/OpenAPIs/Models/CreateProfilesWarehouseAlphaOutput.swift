//
// CreateProfilesWarehouseAlphaOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Returns the newly created Warehouse. */
public struct CreateProfilesWarehouseAlphaOutput: Codable, JSONEncodable, Hashable {

    public var profilesWarehouse: ProfilesWarehouse

    public init(profilesWarehouse: ProfilesWarehouse) {
        self.profilesWarehouse = profilesWarehouse
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case profilesWarehouse
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(profilesWarehouse, forKey: .profilesWarehouse)
    }
}
