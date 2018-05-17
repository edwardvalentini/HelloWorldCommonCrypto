// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HelloWorld",
    dependencies: [
      .package(url: "https://github.com/edwardvalentini/CommonCrypto", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "HelloWorld",
            dependencies: []),
    ]
)
