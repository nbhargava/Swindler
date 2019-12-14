// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swindler",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Swindler",
            targets: ["Swindler"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/nbhargava/AXSwift.git", from: "0.2.4"),
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.10.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "Swindler",
            dependencies: ["AXSwift", "PromiseKit"],
            path: "Sources"),
        .testTarget(
            name: "SwindlerTests",
            dependencies: ["Swindler"],
            path: "SwindlerTests"),
    ]
)
