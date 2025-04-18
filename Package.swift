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
                .headerSearchPath("apple/src/"), // Add path to FFmpeg headers,
                .headerSearchPath("apple/src/FFmpegKitConfig.h")
                .define("FFMPEG_KIT", to: "1")
            ],
            linkerSettings: [
                .linkedLibrary("avutil"),
                .linkedLibrary("avcodec"),
                .linkedLibrary("avformat"), // Add other required FFmpeg libraries
            ]
        ),
        .testTarget(
            name: "ffmpeg-kitTests",
            dependencies: ["ffmpeg-kit"],
            path: "Tests"
        ),
    ]
)
