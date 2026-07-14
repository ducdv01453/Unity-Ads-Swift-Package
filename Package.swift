// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "UnityAds",
  platforms: [.iOS(.v13)],
  products: [
    .library(name: "UnityAds", targets: ["UASPM"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ironsource-mobile/Unity-Ad-Quality-Swift-Package", from: "9.2.1"),
  ],
  targets: [
    .target(
      name: "UASPM",
      dependencies: [
        .target(name: "UnityAds"),
        .product(name: "AdQuality", package: "Unity-Ad-Quality-Swift-Package"),
      ],
      linkerSettings: [
        .linkedFramework("AdSupport"),
        .linkedFramework("AudioToolbox"),
        .linkedFramework("AVFoundation"),
        .linkedFramework("CoreGraphics"),
        .linkedFramework("CoreTelephony"),
        .linkedFramework("Foundation"),
        .linkedFramework("QuartzCore"),
        .linkedFramework("StoreKit"),
        .linkedFramework("SystemConfiguration"),
        .linkedFramework("WebKit"),
        .linkedFramework("UIKit"),
        .linkedFramework("AVFAudio"),
        .linkedFramework("CoreFoundation"),
        .linkedFramework("Network"),
      ]),
    .binaryTarget(
      name: "UnityAds",
      url: "https://github.com/Unity-Technologies/unity-ads-ios/releases/download/4.19.0/UnityAds.zip",
      checksum: "526c3a285dfa3216d5a065d99533cfa67cd2b8a872b230811a8907c9e5ebec4a"
    ),
  ]
)
