// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "SwiftTSGo",
    platforms: [.iOS(.v18), .macOS(.v15)],
    products: [
        .library(
            name: "SwiftTSGo",
            targets: ["TSCBridgeLib"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TSCBridgeLib",
            url: "https://github.com/zshannon/typescript-go-swift/releases/download/0.1.2/TSCBridge.xcframework.zip",
            checksum: "fbef72612b8819e62ecf86a5a29f5d2a09b6a2725433d5b58195ceede151743a"
        ),
    ]
)
