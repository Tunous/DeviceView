// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppStoreSnapshot",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "AppStoreSnapshot",
            targets: ["AppStoreSnapshot"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "AppStoreSnapshot",
            dependencies: []),
        .testTarget(
            name: "AppStoreSnapshotTests",
            dependencies: ["AppStoreSnapshot"]),
    ]
)
