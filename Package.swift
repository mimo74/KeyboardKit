// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "KeyboardKit",
  products: [
      .library(name: "KeyboardKit", targets: ["KeyboardKit"])
  ],
  targets: [
      .target(name: "KeyboardKit", dependencies: [], path: "KeyboardKit"),
      .testTarget(name: "KeyboardKitTests", dependencies: ["KeyboardKit"], path: "KeyboardKit"),
  ],
  swiftLanguageVersions: [.v5]
)

