//
//  AppleGlossaryTests.swift
//  AppleGlossaryTests
//
//  Created by Christoph Pageler on 27.01.21.
//


import XCTest
@testable import AppleGlossary


final class AppleGlossaryTests: XCTestCase {

    func testDeUIKitCore() {
        let deUIKitCore = AppleGlossary().project(locale: .de, catalog: .uiKitCore)

        // project
        XCTAssertNotNil(deUIKitCore)
        XCTAssertEqual(deUIKitCore?.name, "UIKitCore")

        // file
        XCTAssertEqual(deUIKitCore?.files.count, 5)
        let firstFile = deUIKitCore?.files.first
        XCTAssertEqual(firstFile?.filepath, "UIKitCore/System/iOSSupport/System/Library/PrivateFrameworks/UIKitCore.framework/Versions/A/Resources/English.lproj/Localizable.strings")

        // text item
        XCTAssertEqual(firstFile?.textItems.count, 421)
        let firstTextItem = firstFile?.textItems.first
        XCTAssertEqual(firstTextItem?.description, "File Upload alert sheet button string for choosing an existing media item from the Photo Library")
        XCTAssertEqual(firstTextItem?.position, "Photo Library")
        XCTAssertEqual(firstTextItem?.translationSet.base.loc, "en")
        XCTAssertEqual(firstTextItem?.translationSet.base.value, "Photo Library")
        XCTAssertEqual(firstTextItem?.translationSet.tran.loc, "de")
        XCTAssertEqual(firstTextItem?.translationSet.tran.value, "Fotomediathek")
    }

    func testAllAvailableLocalesAndCatalogs() {
        for locale in Locale.allCases {
            for catalog in Catalog.allCases {
                let project = AppleGlossary().project(locale: locale, catalog: catalog)
                XCTAssertNotNil(project)
                XCTAssertNotNil(project?.name)
                XCTAssertGreaterThan(project?.files.count ?? 0, 1)
                XCTAssertNotNil(project?.files.first?.filepath)
                XCTAssertGreaterThan(project?.files.first?.textItems.count ?? 0, 1)
                XCTAssertNotNil(project?.files.first?.textItems.first?.description)
                XCTAssertNotNil(project?.files.first?.textItems.first?.position)
                XCTAssertNotNil(project?.files.first?.textItems.first?.translationSet)
            }
        }
    }

    static var allTests = [
        ("testDeUIKitCore", testDeUIKitCore),
    ]

}
