//
//  Project.swift
//  AppleGlossary
//
//  Created by Christoph Pageler on 27.01.21.
//


import Foundation
import XMLCoder


public struct Project: Codable, Equatable, DynamicNodeDecoding {

    public let name: String
    public let files: [File]

    public enum CodingKeys: String, CodingKey {

        case name = "ProjName"
        case files = "File"

    }

    public static func nodeDecoding(for key: CodingKey) -> XMLDecoder.NodeDecoding {
        return .element
    }

}
