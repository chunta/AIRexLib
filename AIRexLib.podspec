require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'version.json')))

Pod::Spec.new do |s|
  s.name         = "AIRexLib"
  s.version      = package['version'][1..-1]
  s.summary      = "iOS Sdk helps you to track user events in your app and display notifications"
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  s.homepage     = "https://www.appier.com/en/index.html"
  s.documentation_url = "https://docs.aiqua.appier.com/docs"
  s.license    = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "appier" => "rex.chen@appier.com" }
  s.platform     = :ios, '9.0'
  s.source       = { :git => "https://github.com/chunta/AIRexLib.git", :tag => package['version']}
  #s.library = 'z'
  s.ios.vendored_frameworks = ['Appier.framework']
  #s.static_framework = true
  s.swift_version = '4.0'
  #s.prefix_header_file = false
  #s.frameworks = 'AdSupport', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation', 'ImageIO', 'MobileCoreServices'
  s.requires_arc = true
end
