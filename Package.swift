// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "ios-hls-player-prototyp",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "HLSPlayerPrototyp",
            targets: ["HLSPlayerPrototyp"]
        ),
    ],
    targets: [
        .target(
            name: "HLSPlayerPrototyp",
            path: "Sources"
        ),
    ]
)
