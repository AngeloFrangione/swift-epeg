// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftEpeg",
    products: [
        .library(
            name: "SwiftEpeg",
            targets: ["SwiftEpeg"]),
    ],
    dependencies: [
    ],
    targets: [
		.target(
			name: "Cepeg",
			dependencies: []
		),
        .target(
            name: "SwiftEpeg",
            dependencies: []),
        .testTarget(
            name: "swift-epegTests",
            dependencies: ["SwiftEpeg"]),
    ]
)
