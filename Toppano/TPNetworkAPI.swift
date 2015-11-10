//
//  TPNetworkAPI.swift
//  Toppano
//
//  Created by papayabird on 2015/11/6.
//  Copyright © 2015年 papayabird. All rights reserved.
//

import UIKit
import Alamofire


class TPNetworkAPI: NSObject {

    
    func loginWith(fbId:String, name:String, birthday:String, emails:String, bio:String, location:String)
    {
        
        var parameters : Dictionary<String,String>
        
            parameters =  [ "id":fbId,
                            "name":name,
                            "birthday":birthday,
                            "emails":emails,
                            "bio":bio,
                            "location":location,
                            ]
        
        Alamofire.request(.POST, "http://helios-api-0.cloudapp.net:6689/auth/provider/notoken", parameters: parameters)
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }

    }
}
