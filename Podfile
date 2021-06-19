# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'
workspace 'SuperAppDemo.xcworkspace'

$TekoSpecs = 'https://' + ENV['GITHUB_USER_TOKEN'] + '@github.com/teko-vn/Specs-ios.git'   # for using pods from Teko

source 'https://github.com/CocoaPods/Specs.git' # for using pods from cocoaPods
source $TekoSpecs

project 'SuperAppDemo.xcodeproj'
project 'MiniAppDemo/MiniAppDemo.xcodeproj'

#$non_distribution_frameworks = [
#  "TripiFlightKit",
#  "TripiHotelKit"
#]

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
      
      config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'

#      if $non_distribution_frameworks.include?(target.name)
#        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'NO'
#        else
        config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
#      end

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

def terraPods
  pod 'Terra', '~> 2.5.3'
end

def paymentPods
  pod 'Minerva', '~> 3.9.5'
end

def hestiaPods
  pod 'HestiaIOS', '~> 2.6.2'
end

def authPods
  pod 'JanusGoogle', '~> 3.2.6'
  pod 'JanusFacebook', '~> 3.2.7'
end

def tripiPods
  pod 'TripiFlightKitStage', '1.1.0'
  pod 'TripiFlightConnector', '1.1.0'
  
  pod 'TripiHotelKitStage', '1.1.0'
  pod 'TripiHotelConnector', '1.1.0'
  
end

target 'SuperAppDemo' do
  project 'SuperAppDemo.xcodeproj'
  
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SuperAppDemo
  terraPods
  paymentPods
  hestiaPods
  authPods
  
  # pods of mini-apps
  pod 'MAPaymentKit', '~> 1.0.8', source: $TekoSpecs
  
  # Tripi Pods
  tripiPods
  
  pod 'IQKeyboardManagerSwift', '6.5.0'
  
  target 'SuperAppDemoTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SuperAppDemoUITests' do
    # Pods for testing
  end

end

target 'MiniAppDemo' do
  project 'MiniAppDemo/MiniAppDemo.xcodeproj'

  use_frameworks!
  pod 'MAPaymentKit', '~> 1.0.8', source: $TekoSpecs
  pod 'SVProgressHUD'

end

target 'MiniAppDemoSDK' do
  project 'MiniAppDemo/MiniAppDemo.xcodeproj'

  use_frameworks!
  pod 'SVProgressHUD'
  pod 'MAPaymentKit', '~> 1.0.8', source: $TekoSpecs

end

target 'MiniAppDemoConnectorSDK' do
  project 'MiniAppDemo/MiniAppDemo.xcodeproj'

  use_frameworks!
  pod 'SVProgressHUD'
  pod 'MAPaymentKit', '~> 1.0.8', source: $TekoSpecs
  pod 'HestiaIOS', '~> 2.6.2', source: $TekoSpecs

end
