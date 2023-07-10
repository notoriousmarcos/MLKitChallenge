#
#  Be sure to run `pod spec lint MLKitChallenge.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name          = "MLKitChallenge"
  spec.version       = "0.0.1"
  spec.summary       = "MLKit sdk example."
  spec.homepage      = "http://github.com/notoriousmarcos/MLKitChallenge"
  spec.license       = "MIT (example)"
  spec.author             = { "Marcos Brito" => "marcosvcbrito@gmail.com" }
  spec.platform      = :ios, "15.0"
  spec.source_files  = "MLKitChallenge", "MLKitChallenge/**/*.{h,m,swift}"
end
