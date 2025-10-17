// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "SwiftTSGo",
    platforms: [.iOS(.v18), .macOS(.v15)],
    products: [
        .library(
            name: "SwiftTSGo",
            targets: ["SwiftTSGo"]
        ),
    ],
    targets: [
        .systemLibrary(
            name: "TSCBridge",
            path: "Sources/TSCBridge"
        ),
        .binaryTarget(
            name: "TSCBridgeLib",
            url: "https://github.com/zshannon/typescript-go-swift/releases/download/0.1.4/TSCBridge.xcframework.zip",
            checksum: "97c9605c7d3e713ec339441ce33111fb64a6970a41c30b8e1d1c3c51f2d96667"
        ),
        .target(
            name: "SwiftTSGo",
            dependencies: [
                .target(name: "TSCBridge"),
                .target(name: "TSCBridgeLib"),
            ]
        ),
    ]
)
