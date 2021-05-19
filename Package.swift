// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeviceView",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "DeviceView",
            targets: ["DeviceView"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "DeviceView",
            dependencies: []),
        .testTarget(
            name: "DeviceViewTests",
            dependencies: ["DeviceView"]),
    ]
)
