
//
//  ViewController.swift
//  Class04
//
//  Created by iMAC on 2019/7/10.
//  Copyright © 2019 iMACbrave. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AsyncReponseDelegate {
    func receviedReponse(_ sender: AsyncRequestWorker, responseString: String, tag: Int) {
        <#code#>
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let worker:AsyncRequestWorker = AsyncRequestWorker()
        
        worker.getResponse(from: "https://google.com", tag: 1)
        
        NotificationCenter.default.addObserver(self, selector:
            #selector(keyboardWillShow(notification:)), name: NSNotification.Name(rawValue:
                "response.received"),object:nil)
        
        
    }
  
   
    @objc func keyboardWillShow(notification: NSNotification) {
        let hope : String = notification.userInfo!["response"]as! String
        
        print(hope)
       // let idontknow = notification.userInfo!["response"]
     //   print("猜猜看：\(idontknow)")
        //
       // btnHiBottomConstraint.constant = keyboardHeight
        
    }
    
    
}

