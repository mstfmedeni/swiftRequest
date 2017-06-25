# swiftRequest
iOS Swift 3 HTTP network connection function with [Alamofire](https://github.com/Alamofire/Alamofire) and [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON).

# Requirements

iOS 9.0+ 
Xcode 7+
Swift 3.0, 3.1, 4.0
[Alamofire](https://github.com/Alamofire/Alamofire) and [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) 

# Overview
GraphQL is based on a very simple HTTP transaction, which sends a request to an endpoint with query and variables.
Many libraries require complex stacks to make that simple request. In any project you use [Alamofire](https://github.com/Alamofire/Alamofire), [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) , you'll need a simpler client your query and makes a simple request. Because this clases is very mixed for use, So if you will use this function You can make simple and easy requests.

# Manually
You can integrate swiftRequest function into your project manually.

# Descriptions
- method : it is http method default is post

- parameters (optional) : it is http method parameters 

- header : it is http method headers, default is autkey on the swiftRequest.swift 
        
# Usage
on the viewController
```
// For Parameters
import Alamofire

        let parameters: Parameters = ["name":"mustafa","password": "12345"]
   
        DataPost(url: "settings", parameters: parameters, method: .post, header: header) { (json) in
            if let swiftyJsonVar = json{
                 
                 print("success  \(swiftyJsonVar)") // json result

                 if let item = swiftyJsonVar["user"].dictionaryObject {
                   
                    UserDefaults.standard.set(item["id"], forKey: "user_id")
                 }
            
            }else{
            
                print("not found")
            }
            
        }
        
```


