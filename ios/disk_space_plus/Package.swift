// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "disk_space_plus",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(name: "disk-space-plus", targets: ["disk_space_plus"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "disk_space_plus",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ]
        )
    ]
)