# SuperAppDemo

Demo for creating a MiniApp
<br/>

## Project setup

<br/>

### Installation

#### CocoaPods
Save `teko-github-reader-token` into environment variable `GITHUB_USER_TOKEN` before execute pod command
<br/>

```ruby
$TekoSpecs = 'https://' + ENV['GITHUB_USER_TOKEN'] + '@github.com/teko-vn/Specs-ios.git'   # for using pods from Teko

source 'https://github.com/CocoaPods/Specs.git' # for using pods from cocoaPods
source $TekoSpecs

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

```

Notes: Please contact Terra team (thanh.bm@teko.vn) to get `teko-github-reader-token`

## Project structure

### SuperAppDemo
The simple Super-Application version for running Mini-Applications. 
Intergrated modules:
- Terra
- Janus (Auth)
- Minerva (Payment)

<br/>

### MiniAppDemo

#### MiniAppDemo
The simple Mini-Application version for payment, supported by `MAPaymentKit`

This library provide a method for payment through `PaymentService` of TekSystem.

```swift
MAPaymentKit.shared.pay(paymentRequest: .init(orderCode: "valid-order-code", amount: 10000)) { (result) in
            switch result {
            case .success(let info):
                self.showResult(info: info)
            case .failure(let error):
                switch error {
                case .timeOut:
                    self.show(warning: "Time out")
                case .cancelled:
                    self.show(warning: "Cancelled")
                case .unexpected:
                    self.show(warning: "Unexpected error")
                case .failure(let info):
                    self.showResult(info: info)
                }
            }
        }


```

#### MiniAppDemoSDK

This is an SDK of MiniAppDemo application.

#### MiniAppDemoConnectorSDK

The Connector is responsible for initializing data and starting the Mini app. In this example, the Connector (MiniAppLauncher) initializes the MiniAppSDK instance and navigate to root ViewController of MiniApp. To achieve this, the Connector must have a public class that inherited `IOSAppLauncherProtocol` interface:

```swift
    public func create(className: String, launcherData: AppLauncherData, completion: @escaping (UIViewController?) -> ()) {
        dump(launcherData)
        
        var dict: [String : Any] = [:]
        if let data = launcherData.accessToken {
            dict["accessToken"] = data
        }
        if let data = launcherData.refreshToken {
            dict["refreshToken"] = data
        }
        if let data = launcherData.idToken {
            dict["idToken"] = data
        }
        
        let vc = MiniAppSDK.rootViewController(data: dict)
        completion(vc)
    }

```


