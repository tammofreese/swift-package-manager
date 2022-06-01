// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "CycleCheck",
    products: [
        .library(name: "Foo", targets: ["Foo"]),
        .library(name: "Foo2", targets: ["Foo2"]),
        .library(name: "Foo3", targets: ["Foo3"]),
    ],
    targets: [
        .target(name: "Foo", dependencies: [.product(name: "Foo2", package: "CycleCheck")]),
        .target(name: "Foo2", dependencies: [.product(name: "Foo3", package: "CycleCheck")]),
        .target(name: "Foo3", dependencies: [.product(name: "Foo", package: "CycleCheck")]),
    ]
)
