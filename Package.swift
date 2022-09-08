// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import PackageDescription

let package = Package(
    name: "Motor",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Motor",
            targets: ["Motor"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "Motor", path: "./Sources/Motor.xcframework")
    ]
)
