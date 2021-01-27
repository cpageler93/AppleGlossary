//
//  TextItem.swift
//  AppleGlossary
//
//  Created by Christoph Pageler on 27.01.21.
//


import Foundation
import XMLCoder


public struct TextItem: Codable, Equatable, DynamicNodeDecoding {

    public let description: String
    public let position: String
    public let translationSet: TranslationSet

    public enum CodingKeys: String, CodingKey {

        case description = "Description"
        case position = "Position"
        case translationSet = "TranslationSet"

    }

    public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
        return .element
    }

}
