//
// TransitionState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum TransitionState: Codable, JSONEncodable, Hashable {
    case typeAudienceEntryState(AudienceEntryState)
    case typeConditionSplitState(ConditionSplitState)
    case typeDestinationState(DestinationState)
    case typeEventEntryState(EventEntryState)
    case typeEventSplitWithTimeoutState(EventSplitWithTimeoutState)
    case typeRandomSplitState(RandomSplitState)
    case typeSimpleDelayState(SimpleDelayState)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAudienceEntryState(let value):
            try container.encode(value)
        case .typeConditionSplitState(let value):
            try container.encode(value)
        case .typeDestinationState(let value):
            try container.encode(value)
        case .typeEventEntryState(let value):
            try container.encode(value)
        case .typeEventSplitWithTimeoutState(let value):
            try container.encode(value)
        case .typeRandomSplitState(let value):
            try container.encode(value)
        case .typeSimpleDelayState(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AudienceEntryState.self) {
            self = .typeAudienceEntryState(value)
        } else if let value = try? container.decode(ConditionSplitState.self) {
            self = .typeConditionSplitState(value)
        } else if let value = try? container.decode(DestinationState.self) {
            self = .typeDestinationState(value)
        } else if let value = try? container.decode(EventEntryState.self) {
            self = .typeEventEntryState(value)
        } else if let value = try? container.decode(EventSplitWithTimeoutState.self) {
            self = .typeEventSplitWithTimeoutState(value)
        } else if let value = try? container.decode(RandomSplitState.self) {
            self = .typeRandomSplitState(value)
        } else if let value = try? container.decode(SimpleDelayState.self) {
            self = .typeSimpleDelayState(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of TransitionState"))
        }
    }
}

