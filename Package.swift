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
            url: "https://github.com/zshannon/typescript-go-swift/releases/download/0.1.3/TSCBridge.xcframework.zip",
            checksum: "eb8e65737e9f0e5a8d7cfd119e86aaf5ded60162954ee7010a25ac8e072305f7"
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
