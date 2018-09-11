// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "VaporCodes",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.8"),
        .package(url: "https://github.com/vapor/fluent-mysql.git", from: "3.0.1"),
        // 🍃 An expressive, performant, and extensible templating language built for Swift.
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.1"),
        .package(url: "https://github.com/vapor/auth.git", from: "2.0.1"),
        .package(url: "https://github.com/jianstm/Schedule.git", from: "0.1.0"),
        
        
        
        
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor", "FluentMySQL", "Leaf", "Authentication", "Schedule"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

