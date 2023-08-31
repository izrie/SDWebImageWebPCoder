Pod::Spec.new do |s|
  s.name             = 'SDWebImageWebPCoder'
  s.version          = '0.13.0-vision1'
  s.summary          = 'WebP decoder/encoder for SDWebImage coder plugin.'

  s.description      = <<-DESC
This is a SDWebImage coder plugin to support WebP image.
                       DESC

  s.homepage         = 'https://github.com/izrie/SDWebImageWebPCoder'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bogdan Poplauschi' => 'bpoplauschi@gmail.com' }
  s.source           = { :git => 'https://github.com/izrie/SDWebImageWebPCoder.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'
  s.osx.deployment_target = '13.4'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '4.0'
  s.module_map = 'SDWebImageWebPCoder/Module/SDWebImageWebPCoder.modulemap'
  
  s.source_files = 'SDWebImageWebPCoder/Classes/**/*', 'SDWebImageWebPCoder/Module/SDWebImageWebPCoder.h'
  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SD_WEBP=1',
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  }
  s.watchos.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) SD_WEBP=1 WEBP_USE_INTRINSICS=1',
    'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  }
  s.framework = 'CoreGraphics'
  s.dependency 'SDWebImage/Core', '~> 5.17'
  s.dependency 'libwebp-KE', '1.3.1-vision1'
  
end
