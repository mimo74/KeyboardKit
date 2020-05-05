// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "KeyboardKit",
  products: [
      .library(name: "KeyboardKit", targets: ["KeyboardKit"])
  ],
  targets: [
      .exclude 
      .target(name: "KeyboardKit", 
              dependencies: [], 
              path: "KeyboardKit", 
              exclude: [
                    "KeyboardKit/Keyboard.h",
                    "KeyboardKit/BarButtonItem.m",
                    "KeyboardKit/BarButtonItem.h",
                    "KeyboardKit/ResponderChainDebugging.m",
                    "KeyboardKit/KeyboardKitClassicDemo",

              ]),
      .testTarget(name: "KeyboardKitTests", dependencies: ["KeyboardKit"], path: "KeyboardKit", 
              exclude: [
                    "KeyboardKit/Keyboard.h",
                    "KeyboardKit/BarButtonItem.m",
                    "KeyboardKit/BarButtonItem.h",
                    "KeyboardKit/ResponderChainDebugging.m",
                    "KeyboardKit/KeyboardKitClassicDemo",
                    
              ]),),
  ],
  swiftLanguageVersions: [.v5]
)

