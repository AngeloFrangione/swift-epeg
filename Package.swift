// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-epeg",
    products: [
        .library(
            name: "swift-epeg",
            targets: ["swift-epeg"]),
    ],
    dependencies: [
    ],
    targets: [
		.target(
			name: "Cepeg",
			dependencies: []

		),
        .target(
            name: "swift-epeg",
            dependencies: []),
        .testTarget(
            name: "swift-epegTests",
            dependencies: ["swift-epeg"]),
    ]
)
