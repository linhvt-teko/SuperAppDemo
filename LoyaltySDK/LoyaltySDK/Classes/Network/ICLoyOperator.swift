//
//  ICLoyOperator.swift
//  LoyaltySDK
//
//  Created by DucDT on 8/27/19.
//

import UIKit
import ICheckCore
import ICheckNetworking
import Alamofire
import ObjectMapper

#if DEBUG
let ICLoyLog = ICheckCore.ICLog(appName: "LoyaltySDK", level: .verbose)
#else
let ICLoyLog = ICheckCore.ICLog(appName: "LoyaltySDK", level: .none)
#endif

public typealias LoySuccessBlock<T> = (T)->()
public typealias LoyFaultBlock = ((ICLoyNetworkError) -> Void)

class ICLoyOperator: ICBaseNetworkingOperator<ICLoyNetworkResponse, ICLoyNetworkError> {
    
    static let shared = ICLoyOperator(
        hosts: [apis.host],
        logger: ICLoyLog,
        statusKey: "",
        successStatusCodes: [200, 201, 204],
        requireLoginStatusCode: 401,
        requireRefreshTokenStatusCode: 401
    )
    
    
    
    override open func instance() -> ICLoyInstance {
        return ICLoyInstance.shared
    }
    
    override func initHeaders() -> HTTPHeaders? {
        var headers = HTTPHeaders()
        
        if let authorization = instance().authorizationBlock?() {
            headers.update(.authorization(authorization))
        }
        if let deviceId = instance().deviceBlock?() {
            headers.update(name: "device-id", value: deviceId)
        }
        if let location = instance().location?() {
            headers.update(name: "lat", value: location.0)
            headers.update(name: "lon", value: location.1)
		}
        
        return headers
    }
    
    internal override func processing(response: AFDataResponse<Any>, callback: (()->Void)?, onSuccess: ICBaseNetworkingSuccessBlock?, onFault:
        ICBaseNetworkingFaultBlock?) {
        let errorCallback = {
            var message = "Có lỗi xảy ra trong quá trình truy xuất thông tin!"
//            if let json = response.result.value as? [String: Any], let mess = json["message"] as? String {
//                message = mess
//            }
            
            if let body = response.request?.httpBody {
                let jsonRequest = String(data: body, encoding: .utf8) ?? ""
                print("RequestJSon: ", jsonRequest)
            }
            
            
            
            let error = ICLoyNetworkError()
            if let urlResponse = response.response {
                error.status = urlResponse.statusCode
            }
            error.error = response.error
            error.message = message
            onFault?(error)
        }
        
        guard var statusCode = response.response?.statusCode else {
            errorCallback()
            return
        }
        
        switch response.result {
        case .success(let value):
            guard let json = value as? [String: Any] else {
                if statusCode == 200 {
                    let object = ICLoyNetworkResponse()
                    object.data = response.data
                    object.status = statusCode
                    onSuccess?(object)
                }
                else {
                    errorCallback()
                }
                return
            }
            
            if let dataStatus = json["statusCode"] as? Int {
                statusCode = dataStatus
            }
            
            if successStatusCodes.contains(statusCode), let object = Mapper<ICLoyNetworkResponse>().map(JSON: json) {
                if onSuccess != nil {
                    onSuccess!(object)
                    
                    if let body = response.request?.httpBody {
                        let jsonRequest = String(data: body, encoding: .utf8) ?? ""
                        print("RequestJSon: ", jsonRequest)
                    }
                }
                return
            }

            guard let error = Mapper<ICLoyNetworkError>().map(JSON: json) else {
                errorCallback()
                return
            }
            onFault?(error)
        case .failure(let err):
            errorCallback()
            return
        }
    }
}

extension ICLoyOperator {
    func listItems<ObjectType>(api: String, pathParameters: [CVarArg]? = nil, parameters: Parameters? = nil, offset: Int? = nil, limit: Int? = nil, onSuccess: LoySuccessBlock<[ObjectType]>?, onFault: LoyFaultBlock?) where ObjectType : ICBaseModel {
        var params = parameters ?? [String: Any]()
        if let offset = offset {
            params.updateValue(offset, forKey: "offset")
        }
        if let limit = limit {
            params.updateValue(limit, forKey: "limit")
        }
        super.getListItems(api: api, pathParameters: pathParameters, parameters: params, responseKey: "rows", onSuccess: onSuccess, onFault: onFault)
    }
    
    func listItemsWithCount<ObjectType>(api: String, pathParameters: [CVarArg]? = nil, parameters: Parameters? = nil, offset: Int? = nil, limit: Int? = nil, onSuccess: LoySuccessBlock<ICLoyListResponse<ObjectType>>?, onFault: LoyFaultBlock?) where ObjectType : ICBaseModel {
        var params = parameters ?? [String: Any]()
        if let offset = offset {
            params.updateValue(offset, forKey: "offset")
        }
        if let limit = limit {
            params.updateValue(limit, forKey: "limit")
        }
        super.getItem(api: api, pathParameters: pathParameters, parameters: params, onSuccess: onSuccess, onFault: onFault)
    }
    
    
    func postItemReturnArray<ObjectType: ICBaseModel>(api: String, pathParameters: [CVarArg]? = nil, parameters: Parameters? = nil, responseKey: String? = nil, onSuccess: (([ObjectType])->Void)?, onFault: ICBaseNetworkingFaultBlock?) {
        post(api, pathParameters: pathParameters, parameters: parameters, onSuccess: { (response) in
            self.processingArray(response: response, key: responseKey, onSuccess: onSuccess, onFault: onFault)
        }, onFault: onFault)
    }
    
}





