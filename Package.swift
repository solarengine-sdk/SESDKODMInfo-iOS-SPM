// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SESDKODMInfo",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "SESDKODMInfo", targets: ["SESDKODMInfoTarget"])
    ],
    targets: [
        .binaryTarget(
            name: "SESDKODMInfoBinary",
            url: "https://github.com/solarengine-sdk/SESDKODMInfo-iOS-SPM/releases/download/1.0.2/SESDKODMInfo-1.0.2.xcframework.zip",
            checksum: "4fcf7007c843a0fcb869c738867666776af28a69480bf0c220c37faefab8fc36"
        ),
        .target(
            name: "SESDKODMInfoTarget",
            dependencies: ["SESDKODMInfoBinary"],
            linkerSettings: [.linkedFramework("Foundation")]
        )
    ]
)
