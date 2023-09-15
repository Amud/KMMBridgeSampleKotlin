// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/Amud/KMMBridgeSampleKotlin/KMMBridgeSampleKotlin/shared-kmmbridge/red0.0.1/shared-kmmbridge-red0.0.1.zip"
let remoteKotlinChecksum = "60ae183a3d3b0958f451181f2ba2a6658301fa3ae73b313838498cba2c6e4339"
let packageName = "shared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)