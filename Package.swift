// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MXJingle",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "MXJingle",
      targets: ["MXJingle"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/globekeeper/MatrixSDK", from: "0.20.3"),
    .package(url: "https://github.com/alexpiezo/WebRTC.git", from: "95.4638.0"),
    .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver", from: "1.9.5"),
    // FIXME: ^ adding `SwiftyBeaver` due to https://github.com/niochat/MatrixSDK/issues/2
  ],
  targets: [
    .target(
      name: "MXJingle",
      dependencies: [
        .product(name: "MatrixSDK", package: "MatrixSDK"),
        .product(name: "WebRTC", package: "WebRTC"),
        .product(name: "SwiftyBeaver", package: "SwiftyBeaver"),
      ],
      path: "Sources",
      publicHeadersPath: "Public"
    ),
    .testTarget(
      name: "MXJingleTests",
      dependencies: ["MXJingle"],
      path: "Tests"
    )
  ]
)
