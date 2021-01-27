//
//  AppleGlossary.swift
//  AppleGlossary
//
//  Created by Christoph Pageler on 27.01.21.
//


import Foundation
import XMLCoder


public class AppleGlossary {

    public init() { }

    public func project(locale: Locale, catalog: Catalog) -> Project? {
        let filename = "\(locale.rawValue)_\(catalog.rawValue)"
        guard let url = Bundle.module.url(forResource: filename, withExtension: "lg") else { return nil }
        guard let data = try? Data(contentsOf: url) else { return nil }
        return try? XMLDecoder().decode(Project.self, from: data)
    }

}
