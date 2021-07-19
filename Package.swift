// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "UIReusableView",
    platforms: [.iOS(.v8)],
    products: [
        .library(
            name: "UIReusableView",
            targets: ["UIReusableView"])
    ],
    targets: [
        .target(
            name: "UIReusableView"),
        .testTarget(
            name: "UIReusableViewTests",
            dependencies: ["UIReusableView"])
    ]
)
