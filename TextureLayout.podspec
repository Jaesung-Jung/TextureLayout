Pod::Spec.new do |s|
  s.name             = "TextureLayout"
  s.version          = "1.0.0"
  s.summary          = "Texture layout builder using @_functionBuilder."

  s.homepage         = "https://github.com/Jaesung-Jung/TextureLayout"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Jaesung Jung" => "heyjerks@live.co.kr" }
  s.source           = { :git => "https://github.com/Jaesung-Jung/TextureLayout.git",
                         :tag => s.version.to_s }

  s.source_files     = "Sources/**/*.swift"

  s.swift_version = "5.1"
  s.dependency 'Texture', '~> 2.7'

  s.ios.deployment_target = "13.0"
end
