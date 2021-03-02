# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'
workspace 'SuperAppDemo.xcworkspace'

$TekoSpecs = 'https://' + ENV['GITHUB_USER_TOKEN'] + '@github.com/teko-vn/Specs-ios.git'   # for using pods from Teko

source 'https://github.com/CocoaPods/Specs.git' # for using pods from cocoaPods
source $TekoSpecs

project 'SuperAppDemo.xcodeproj'
project 'MiniAppDemo/MiniAppDemo.xcodeproj'

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

      # Xcode12 have to exclude arm64 for simulator architecture
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"

      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'

      if config.name == 'Release' || config.name == 'Pro'
        config.build_settings['BITCODE_GENERATION_MODE'] = 'bitcode'
        else # Debug
        config.build_settings['BITCODE_GENERATION_MODE'] = 'marker'
      end

      cflags = config.build_settings['OTHER_CFLAGS'] || ['$(inherited)']

      if config.name == 'Release' || config.name == 'Pro'
        cflags << '-fembed-bitcode'
        else # Debug
        cflags << '-fembed-bitcode-marker'
      end

      config.build_settings['OTHER_CFLAGS'] = cflags
    end
  end
end

target 'SuperAppDemo' do
  project 'SuperAppDemo.xcodeproj'
  
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SuperAppDemo
  pod 'Terra', '~> 2.5.2'
  pod 'Minerva', '~> 3.5.3'

  pod 'HestiaIOS', '~> 2.5.1'
  
  # pods of mini-apps
  pod 'MAPaymentKit', '~> 1.0.6', source: $TekoSpecs
  
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
  pod 'MAPaymentKit', '~> 1.0.6', source: $TekoSpecs

end

target 'MiniAppDemoSDK' do
  project 'MiniAppDemo/MiniAppDemo.xcodeproj'

  use_frameworks!
  pod 'MAPaymentKit', '~> 1.0.6', source: $TekoSpecs

end

target 'MiniAppDemoConnectorSDK' do
  project 'MiniAppDemo/MiniAppDemo.xcodeproj'

  use_frameworks!
  pod 'MAPaymentKit', '~> 1.0.6', source: $TekoSpecs
  pod 'HestiaIOS', '~> 2.5.1', source: $TekoSpecs

end
