//
// DiagnosticLogsProductDataInnerDiagnosticLogsInnerCallStackTreeInnerCallStacksInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DiagnosticLogsProductDataInnerDiagnosticLogsInnerCallStackTreeInnerCallStacksInner: Codable, JSONEncodable, Hashable {

    public var callStackRootFrames: [DiagnosticLogCallStackNode]?

    public init(callStackRootFrames: [DiagnosticLogCallStackNode]? = nil) {
        self.callStackRootFrames = callStackRootFrames
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case callStackRootFrames
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(callStackRootFrames, forKey: .callStackRootFrames)
    }
}
