#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint facebook_sdk_ios.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'facebook_sdk_ios'
  s.version          = '0.0.1'
  s.summary          = 'Facebook SDK for flutter ios'
  s.description      = <<-DESC
Facebook SDK for flutter ios.
                       DESC
  s.homepage         = 'http://nesmin.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'nesmin.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'FBSDKCoreKit'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
