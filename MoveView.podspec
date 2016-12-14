#
#  Be sure to run `pod spec lint MoveView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


Pod::Spec.new do |s|

  s.name         = "MoveView"
  s.version      = "0.0.1"
  s.summary      = "A MoveView"
  s.homepage     = "https://github.com/zwlzlx/MoveView"
  s.license      = "MIT"
  s.author             = { "zwlzlx" => "zwlzlx@sina.com" }
  s.platform     = :ios,"5.0"
  s.source       = { :git => "https://github.com/zwlzlx/MoveView.git", :tag => "#{s.version}" }
  s.source_files  = "MoveView/MoveView/*.{h,m}"
  s.frameworks = "Foundation", "UIKit"
  s.requires_arc = true
end
