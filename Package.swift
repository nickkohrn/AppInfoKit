// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "AppInfoKit",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "AppInfoKit",
            targets: ["AppInfoKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", .upToNextMajor(from: "0.0.0")),
    ],
    targets: [
        .target(
            name: "AppInfoKit",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
            ]),
        .testTarget(
            name: "AppInfoKitTests",
            dependencies: ["AppInfoKit"]),
    ]
)
