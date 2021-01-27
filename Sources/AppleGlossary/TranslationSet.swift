//
//  TranslationSet.swift
//  AppleGlossary
//
//  Created by Christoph Pageler on 27.01.21.
//


import Foundation
import XMLCoder


public struct TranslationSet: Codable, Equatable, DynamicNodeDecoding {

    public let base: Translation
    public let tran: Translation

    public enum CodingKeys: String, CodingKey {

        case base = "base"
        case tran = "tran"

    }

    public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
        return .element
    }

}
