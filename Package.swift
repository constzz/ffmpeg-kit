// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ffmpeg-kit",
    platforms: [
        .iOS(.v13),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "ffmpeg-kit",
            targets: ["ffmpeg-kit"]
        ),
    ],
    dependencies: [
        // Add external dependencies here if needed
    ],
    targets: [
        .target(
            name: "ffmpeg-kit",
            dependencies: [],
            path: "src/apple", // This points to your source files
            exclude: [],
            publicHeadersPath: "." // Use this if your public headers are at the root of src/apple
        ),
        .testTarget(
            name: "ffmpeg-kitTests",
            dependencies: ["ffmpeg-kit"],
            path: "Tests"
        ),
    ]
)
