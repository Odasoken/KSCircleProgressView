Pod::Spec.new do |s|
s.name         = 'KSCircleProgressView'
s.summary      = 'KSCircleProgressView : a lightweight iOS Circle ProgressView.'
s.version      = '0.0.3'
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.authors      = { 'abredo' => 'abredo@gmail.com' }
s.homepage     = 'https://github.com/abredo/KSCircleProgressViewDemo'
s.platform     = :ios, '8.0'
s.ios.deployment_target = '8.0'
s.source       = { :git => 'https://github.com/abredo/KSCircleProgressViewDemo.git', :tag => s.version.to_s }

s.requires_arc = true
s.source_files = "KSCircleProgressView", "*.{h,m}"
s.public_header_files = 'KSCircleProgressView/**/*.{h}'

s.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore',

end















