Pod::Spec.new do |s|
s.name         = 'KSCircleProgressView'
s.summary      = 'KSCircleProgressView : a lightweight iOS Circle ProgressView.'
s.version      = '1.0.0'
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.authors      = { 'Odasoken' => 'Odasoken@foxmail.com' }
s.homepage     = 'https://github.com/Odasoken/KSCircleProgressView'
s.platform     = :ios, '8.0'
s.ios.deployment_target = '8.0'
s.source       = { :git => 'https://github.com/Odasoken/KSCircleProgressView.git', :tag => s.version.to_s }

s.requires_arc = true
s.source_files = "KSCircleProgressView", "*.{h,m}"
s.public_header_files = 'KSCircleProgressView/**/*.{h}'

s.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore'

end















