// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "Foo",
    products: [
        .library(name: "Foo", targets: ["Foo"]),
        .library(name: "Foo2", targets: ["Foo2"]),
    ],
    targets: [
        .target(name: "Foo", dependencies: [.product(name: "Foo2")]),
        .target(name: "Foo2"),
        .testTarget(name: "FooTests", dependencies: [.product(name: "Foo2")]),
    ]
)
