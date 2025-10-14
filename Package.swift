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
            checksum: "251a4dab4bbe5b5ee484e7d01bb342686845260e34a84818d6fbd48101086f71"
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
