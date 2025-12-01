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
            url: "https://github.com/zshannon/typescript-go-swift/releases/download/0.1.5/TSCBridge.xcframework.zip",
            checksum: "642b1fa2a3e3ad0fa4c240164e7ab6a22ee6e07aa6b1b989dd3e5597ddcecea8"
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
