import PackageDescription

let package = Package(
  name: "Then",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(name: "TextureLayout", targets: ["TextureLayout"]),
  ],
  targets: [
    .target(name: "TextureLayout"),
    .testTarget(name: "TextureLayoutTests", dependencies: ["TextureLayout"]),
  ]
)
