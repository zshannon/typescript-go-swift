# SwiftTSGo

Swift Package wrapper for typescript-go XCFramework. This package allows you to use TypeScript code in your Swift projects through a bridging framework.

## Installation

Add this package to your Swift project using Swift Package Manager.

### Xcode

1. In Xcode, select **File → Add Package Dependencies...**
2. Enter the repository URL: `https://github.com/zshannon/typescript-go-swift`
3. Select the version you want to use
4. Click **Add Package**

### Package.swift

Add the package as a dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/zshannon/typescript-go-swift", from: "0.1.2")
]
```

Then add it to your target's dependencies:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "SwiftTSGo", package: "typescript-go-swift")
    ]
)
```

## Usage

Import the package in your Swift files:

```swift
import SwiftTSGo
```

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Related

This is a binary distribution wrapper for [typescript-go](https://github.com/zshannon/typescript-go).
