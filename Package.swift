// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "RPC",
    products: [
        .library(name: "XMLRPC", targets: ["XMLRPC"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-stack/xml.git",
            .branch("master")),
        .package(
            url: "https://github.com/swift-stack/radix.git",
            .branch("master")),
        .package(
            url: "https://github.com/swift-stack/test.git",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "XMLRPC",
            dependencies: ["XML", "Base64"]),
        .testTarget(
            name: "XMLRPCTests",
            dependencies: ["XMLRPC", "Test"])
    ]
)
