#
# Be sure to run `pod lib lint WebRTC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WebRTC'
  s.version          = '1.0.0'
  s.summary          = 'This is the WebRTC framework using the XCFramework bundle type for iOS and macOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
All binaries in this repository are compiled from the official WebRTC source code without any modifications to the sources code or to the output binaries.
                       DESC

  s.homepage         = 'https://github.com/foresightMobile/webrtc-swift.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author           = { 'artemHrebinikChisw' => '75477796+artemHrebinikChisw@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/foresightMobile/webrtc-swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.11'
  #s.source_files = 'WebRTC/Classes/**/*'
  s.vendored_frameworks = "WebRTC.xcframework"
  
  
s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'EXCLUDED_ARCHS[sdk=macosx*]' => 'arm64',
    
}
s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'EXCLUDED_ARCHS[sdk=macosx*]' => 'arm64'
}
#'ONLY_ACTIVE_ARCH' => 'YES'

end

