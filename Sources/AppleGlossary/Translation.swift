//
//  Translation.swift
//  AppleGlossary
//
//  Created by Christoph Pageler on 27.01.21.
//


import Foundation
import XMLCoder


public struct Translation: Codable, Equatable, DynamicNodeDecoding {

    public let loc: String
    public let value: String

    public enum CodingKeys: String, CodingKey {

        case loc = "loc"
        case value = ""

    }

    public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
        switch key {
        case CodingKeys.loc: return .attribute
        case CodingKeys.value: return .element
        default: return .element
        }
    }

}
