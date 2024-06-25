// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//let package = Package(
//    name: "TestOnePackage",
//    products: [
//        // Products define the executables and libraries a package produces, making them visible to other packages.
//        .library(
//            name: "TestOnePackage",
//            targets: ["TestOnePackage"]),
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package, defining a module or a test suite.
//        // Targets can depend on other targets in this package and products from dependencies.
//        .target(
//            name: "TestOnePackage"),
//        .testTarget(
//            name: "TestOnePackageTests",
//            dependencies: ["TestOnePackage"]),
//    ]
//)

let package = Package(
    name: "TestOnePackage",
    products: [
        .library(
            name: "TestOnePackage",
            targets: ["CIdentitySwift", "TestOnePackage", "C_Identity_Utils_Swift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/OpenSSL.git", from: "3.1.5004")
    ],
    targets: [
        .binaryTarget(
            name: "CIdentitySwift",
            path: "./Sources/CIdentitySwift.xcframework"
        ),
        .binaryTarget(
            name: "C_Identity_Utils_Swift",
            path: "./Sources/C_Identity_Utils_Swift.xcframework"
        ),
        .target(
            name: "TestOnePackage",
            dependencies: ["OpenSSL"]),
    ]
)
