// swift-tools-version:4.0
import PackageDescription
import Foundation

guard let kituraRoot = ProcessInfo.processInfo.environment["KITURA_ROOT"] else {
    fatalError("KITURA_ROOT must be present")
}

let package = Package(
    name: "HelloKitura",
    dependencies: [
        .package(url: "\(kituraRoot)/Kitura", .branch("master") )
    ],
    targets: [
        .target(name: "HelloKitura", dependencies: ["Kitura"]),
    ]
)
