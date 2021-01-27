// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppleGlossary",
    products: [
        .library(name: "AppleGlossary", targets: ["AppleGlossary"]),
    ],
    dependencies: [
        .package(url: "https://github.com/MaxDesiatov/XMLCoder.git", from: "0.12.0")
    ],
    targets: [
        .target(
            name: "AppleGlossary", 
            dependencies: [
                .product(name: "XMLCoder", package: "XMLCoder")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(name: "AppleGlossaryTests", dependencies: ["AppleGlossary"]),
    ]
)
