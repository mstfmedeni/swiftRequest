//
//  swiftRequest.swift
//  myClases
//
//  Created by Mustafa Medeni on 25.06.2017.
//  Copyright © 2017 Mustafa Medeni. All rights reserved.
//

import Alamofire
import SwiftyJSON

// Your RestfulApi url
public let ServerURL =  "http://domain.com/Api/"

// if You are need Auth-Key on header for api
public var header: HTTPHeaders = [ "Auth-Key": "key"]


public func DataPost(url: String,parameters:Parameters?,method:HTTPMethod = .post,header:HTTPHeaders=header, completionHandler: @escaping (_ json: JSON?) -> Void){
    
    Alamofire.request(ServerURL+url, method: method, parameters: parameters, encoding: JSONEncoding.default,headers: header).responseJSON { (responseData) -> Void in
        if((responseData.result.value) != nil) {
            let swiftyJsonVar = JSON(responseData.result.value!)
            
            completionHandler(swiftyJsonVar)
            
            }else{
            
                completionHandler(nil)
            }
        
    }
    
}

