
Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '10.0'
s.name = "FlowControllerKit"
s.summary = "A collection of helpers to make cleaner Flow Controller classes."
s.requires_arc = true
s.version = "1.0.2"
s.license = { :type => "MIT", :file => "LICENSE" }

s.author = { "Cenny Davidsson" => "cenny.davidsson@varvet.com" }
s.homepage = "https://github.com/varvet/FlowControllerKit.git"
s.source = { :git => "https://github.com/varvet/FlowControllerKit.git",
             :tag => "#{s.version}" }
s.framework = "UIKit"

s.source_files = "FlowControllerKit/**/*"
s.resources = "FlowControllerKit/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

s.swift_version = "4"

end
