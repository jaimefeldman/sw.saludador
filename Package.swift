// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "saludador",
    dependencies: [
        .package(url: "https://github.com/onevcat/Rainbow", from: "4.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "saludador", // Mantén esta definición si quieres que el paquete sea ejecutable
            dependencies: [
                "Rainbow",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]),
        // Si deseas un target adicional que no sea ejecutable, puedes agregarlo aquí
        /*
        .target(
            name: "NombreDelNuevoTarget",
            dependencies: [
                "Rainbow",
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]),
        */
    ]
)
