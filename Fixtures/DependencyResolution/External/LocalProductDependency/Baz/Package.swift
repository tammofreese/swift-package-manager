// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "Baz",
    products: [
        .library(name: "Baz", targets: ["Baz"]),
    ],
    dependencies: [
        .package(path: "../Foo"),
    ],
    targets: [
	.target(name: "Baz", dependencies: [.product(name: "Foo2", package: "Foo")]),
    ]
)
