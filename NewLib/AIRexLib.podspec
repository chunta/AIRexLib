require 'json'

#package = JSON.parse(File.read(File.join(__dir__, 'version.json')))

Pod::Spec.new do |s|
  s.name         = "AIRexLib"
  s.version      = "0.7.9"
  s.summary      = "iOS Sdk helps you to track user events in your app and display notifications"

  s.homepage     = "https://www.appier.com/en/index.html"
  s.documentation_url = "https://docs.aiqua.appier.com/docs"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "appier" => "rex.chen@appier.com" }
  s.platform     = :ios, '11.0'
  s.source       = { :git => "https://github.com/chunta/HeyRexLib.git", :tag => "0.7.9"}
  s.default_subspec = "ios-sdk"

  s.subspec 'ios-sdk' do |ss|
    ss.library = 'z'
    ss.source_files = 'NewLib/Source/Classes/**/*'
    #ss.source_files = "QGSdk.h", "AIQP.h", "QGWKWebView.h", "QGInbox.h", "AIQP+ReactNative.h"
    #ss.vendored_library = "libQGSdk.a"
    ss.vendored_libraries = 'NewLib/Source/Classes/*.a'
    ss.frameworks = 'AdSupport', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation', 'ImageIO', 'MobileCoreServices'
  end

  s.requires_arc = true
  s.static_framework = true
end