//
//  ViewController.swift
//  AlamofireWithTableView
//
//  Created by iFlame on 5/31/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "https://jsonplaceholder.typicode.com/users")
        let request = NSMutableURLRequest(url: url! as URL)
        request.httpMethod = "GET"
        request.setValue("Application/json", forHTTPHeaderField: "Context App")
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            
            switch response.result {
                
            case .success(let data):
                print("success\(data)")
            case .failure(let error):
                print("Failure\(error)")
            }
            
            
        }
        
}
}
