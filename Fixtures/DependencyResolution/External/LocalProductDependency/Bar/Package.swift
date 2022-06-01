// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "Bar",
    dependencies: [
        .package(path: "../Foo"),
        .package(path: "../Baz"),
    ],
    targets: [
        .executableTarget(name: "Bar", dependencies: ["Foo", "Baz"], path: "./"),
    ]
)
