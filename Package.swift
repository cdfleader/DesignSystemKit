// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignSystemKit",
    platforms: [
        .macOS(.v11),
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DesignSystemKit",
            targets: ["DesignSystemKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DesignSystemKit",
            path: "Sources/DesignSystemKit",
            resources: [
                .process("Resources/Theme"),
                .process("Resources/Icons"),
                .process("Resources/Fonts"),
                .process("Resources/Colors.xcassets")
            ]),
        .testTarget(
            name: "DesignSystemKitTests",
            dependencies: ["DesignSystemKit"]
        ),
    ]
)
