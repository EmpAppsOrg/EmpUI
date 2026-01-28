// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "EmpUI",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
    ],
    products: [
        .library(name: "EmpUI", targets: ["EmpUI"]),
    ],
    targets: [
        .target(name: "EmpUI"),
        .testTarget(name: "EmpUITests", dependencies: ["EmpUI"]),
    ],
)
