// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PracticeProj",
    
    dependencies: [
        .package(
            url: "https://github.com/stephencelis/SQLite.swift.git",
            from: "0.16.0"
        )
    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "PracticeProj",
            dependencies: [
                .product(
                    name: "SQLite",
                    package: "SQLite.swift"
                )
            ]
        ),

    ],
    swiftLanguageModes: [.v6]
)
