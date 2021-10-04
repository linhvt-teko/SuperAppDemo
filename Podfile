# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'
workspace 'SuperAppDemo.xcworkspace'

$TekoSpecs = 'https://' + ENV['GITHUB_USER_TOKEN'] + '@github.com/teko-vn/Specs-ios.git'   # for using pods from Teko

source 'https://github.com/CocoaPods/Specs.git' # for using pods from cocoaPods
source $TekoSpecs

project 'SuperAppDemo.xcodeproj'
project 'MiniAppDemo/MiniAppDemo.xcodeproj'

use_frameworks!

# bitcode enable
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|

      # delete CODE_SIGNING_ALLOWED && CODE_SIGNING_REQUIRED
      config.build_settings.delete('CODE_SIGNING_ALLOWED')
      config.build_settings.delete('CODE_SIGNING_REQUIRED')
      
      # set valid architecture
      config.build_settings['VALID_ARCHS'] = 'arm64 armv7 armv7s x86_64'

      # build active architecture only (Debug build all)
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'

      config.build_settings['ENABLE_BITCODE'] = 'YES'
      
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'

      if config.name == 'Release'
          config.build_settings['BITCODE_GENERATION_MODE'] = 'bitcode'
      else # Debug
          config.build_settings['BITCODE_GENERATION_MODE'] = 'marker'
      end

      cflags = config.build_settings['OTHER_CFLAGS'] || ['$(inherited)']

      if config.name == 'Release'
          cflags << '-fembed-bitcode'
      else # Debug
          cflags << '-fembed-bitcode-marker'
      end

      config.build_settings['OTHER_CFLAGS'] = cflags
    end
  end
end

def hestiaPods
  pod 'HestiaIOS', '~> 2.9'
end

target 'TripiPrepaidConnector' do
  project 'TripiPrepaidConnector/TripiPrepaidConnector.xcodeproj'
  
  hestiaPods
  pod 'MAPaymentKit', '~> 2.0'
  pod 'IQKeyboardManagerSwift', '6.5.0'
#  pod 'TripiPrepaidKit', '~> 0.1'
  
  
end

target 'SuperAppDemo' do
  project 'SuperAppDemo.xcodeproj'
  
  # host app
  pod 'JanusUI', '~> 3.5', source: $TekoSpecs
  pod 'MinervaUI', '~> 3.13', source: $TekoSpecs
  pod 'LoyaltyCore', '~> 0.3', source: $TekoSpecs
  pod 'Terra', '~> 3.1', source: $TekoSpecs
  pod 'HestiaIOS', '~> 2.9', source: $TekoSpecs
  pod 'Apollo', '~> 1.0', source: $TekoSpecs
  pod 'ApolloTheme', '~> 1.0', source: $TekoSpecs
  pod 'MAPaymentKit', '~> 2.0', source: $TekoSpecs
  pod 'TekIrisService', '~> 1.2', source: $TekoSpecs
  pod 'IQKeyboardManagerSwift', '~> 6.5.0'
  
  # mini app
  pod 'TripiPrepaidKit', '~> 0.1.0'
  pod 'TripiFlightConnector', '~> 2.0.0'
  pod 'TripiFlightPaymentKit', '~> 2.0.1'
  pod 'TripiHotelConnector', '~> 2.0.0'
  pod 'TripiHotelPaymentKit', '~> 2.0.1'
  
  
end

target 'MiniAppDemo' do
  project 'MiniAppDemo/MiniAppDemo.xcodeproj'

  use_frameworks!
  pod 'MAPaymentKit', '~> 2.0', source: $TekoSpecs
  pod 'SVProgressHUD'

end

target 'MiniAppDemoSDK' do
  project 'MiniAppDemo/MiniAppDemo.xcodeproj'

  use_frameworks!
  pod 'SVProgressHUD'
  pod 'MAPaymentKit', '~> 2.0', source: $TekoSpecs

end

target 'MiniAppDemoConnectorSDK' do
  project 'MiniAppDemo/MiniAppDemo.xcodeproj'

  use_frameworks!
  pod 'SVProgressHUD'
  pod 'MAPaymentKit', '~> 2.0', source: $TekoSpecs
  pod 'HestiaIOS'

end
