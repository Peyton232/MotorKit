// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MotorKit",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "MotorKit",
      targets: ["MotorKit", "Motor"]
    )

  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/apple/swift-protobuf.git", .upToNextMajor(from: "1.0.0"))

  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.\
    .binaryTarget(
      name: "Motor",
      url: "https://github.com/sonr-io/MotorKit/releases/download/v0.1.1/motor-v0.3.10-ios.zip",
      checksum: "82f2f91b8332add9b550243d99d7462ace2ceda51b3efc2aea9236ce2a7bbe03"
    ),

    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "MotorKit",
      dependencies: [
        "Motor",
        .product(name: "SwiftProtobuf", package: "swift-protobuf"),
      ],
      path: "./Sources/MotorKit",
      exclude: ["buf.gen.yaml"]
    ),
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .testTarget(
      name: "MotorKitTests",
      dependencies: ["MotorKit", "Motor"]),
  ]
)
