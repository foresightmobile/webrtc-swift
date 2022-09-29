#
# Be sure to run `pod lib lint WebRTC.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'webrtc-swift'
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
  #s.license          = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.license = { :type => 'MIT', :text => <<-LICENSE
    Copyright (c) 2021 Bandwidth

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
                 LICENSE
               }
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

