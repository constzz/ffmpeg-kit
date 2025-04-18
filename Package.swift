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
    dependencies: [],
    targets: [
        .target(
            name: "ffmpeg-kit",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "ffmpeg-kitTests",
            dependencies: ["ffmpeg-kit"],
            path: "Tests"
        ),
    ]
)
