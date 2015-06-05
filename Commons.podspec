

#
#  Be sure to run `pod spec lint Commons.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name         = "Commons"
s.version      = "0.1"
s.summary      = "A compilation of Common iOS functions/methods/categories useful for all projects."
s.description  = <<-DESC
A compilation of Common iOS functions/methods/categories useful for all projects, compiled into a CocoaTouch framework project
DESC

s.homepage     = "https://github.com/mdermejian/Commons"
s.license      = { :type => "MIT", :file => "LICENSE.txt" }
s.author       = { "MD" => "mdermejian@fexco.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/mdermejian/Commons.git", :tag => "v#{s.version}" }
s.source_files = "Commons", "Commons/**/*.{h,m}"
s.requires_arc = true

end
