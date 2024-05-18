// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "swift-livre",
  products: [
    .library(name: "Livre", targets: ["Livre"])
  ],
  targets: [
    .target(name: "Livre"),
    .testTarget(name: "LivreTests", dependencies: ["Livre"]),
  ]
)
