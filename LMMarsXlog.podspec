#
# Be sure to run `pod lib lint LMMarsXlog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LMMarsXlog'
  s.version          = '1.0.0'
  s.summary          = 'LMMarsXlog 主要是基于微信官方的终端基础组件xlog封装的一套高性能日志模块。'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/make2a/SubMarsXlog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lm6' => 'xiyouji.xiaoyaoyou.lm6@gmail.com' }
  s.source           = { :git => 'https://github.com/make2a/SubMarsXlog.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.vendored_frameworks = 'LMMarsXlog/mars.framework'
  
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64'}
  # 如果在头文件引用了 当前 pod 依赖的 framework ，则需要下面的配置
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
  
  s.libraries = 'resolv.9', 'z'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony'
  # s.dependency 'SSZipArchive'
  
  # s.resource_bundles = {
  #   'LMMarsXlog' => ['LMMarsXlog/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
