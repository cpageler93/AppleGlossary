//
//  File.swift
//  AppleGlossary
//
//  Created by Christoph Pageler on 27.01.21.
//


import Foundation
import XMLCoder


public struct File: Codable, Equatable, DynamicNodeDecoding {

    public let filepath: String
    public let textItems: [TextItem]

    public enum CodingKeys: String, CodingKey {

        case filepath = "Filepath"
        case textItems = "TextItem"

    }

    public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
        return .element
    }

}
