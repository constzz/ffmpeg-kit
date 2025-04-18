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
            path: "apple/src",
            exclude: ["README.md"],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("../ffmpeg"), // Add path to FFmpeg headers
                .define("FFMPEG_KIT", to: "1")
            ]
        ),
        .testTarget(
            name: "ffmpeg-kitTests",
            dependencies: ["ffmpeg-kit"],
            path: "Tests"
        ),
    ]
)
