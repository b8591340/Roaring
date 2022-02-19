// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Roaring",
    products: [
        .library(name: "croaring", targets: ["croaring"]),
        .library(name: "Roaring", targets: ["Roaring"]),
        .library(name: "RoaringDynamic", type: .dynamic, targets: ["Roaring"]),
    ],
    targets: [
        .target(
            name: "croaring",
            path: "./Sources/CRoaring"
        ),
        .target(
            name: "Roaring",
            dependencies: ["croaring"]
        ),
        .testTarget(
            name: "RoaringTests",
            dependencies: ["Roaring"]
        ),
    ]
)
