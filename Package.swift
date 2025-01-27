// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "SocketIO",
    products: [
        .library(name: "SocketIO", type: .dynamic, targets: ["SocketIO"])
    ],
    dependencies: [
        .package(url: "https://github.com/hrabkin/Starscream.git", .branch("master")),
    ],
    targets: [
        .target(name: "SocketIO", dependencies: ["Starscream"]),
        .testTarget(name: "TestSocketIO", dependencies: ["SocketIO"]),
    ]
)
