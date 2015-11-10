//
//  TPLoginViewController.swift
//  Toppano
//
//  Created by papayabird on 2015/11/6.
//  Copyright © 2015年 papayabird. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class TPLoginViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        

        /*
        let homeVC = TPHomeViewController(nibName:"TPHomeViewController",bundle:nil);
        
        self.navigationController!.pushViewController(homeVC, animated: true);
        */
    }

    @IBAction func loginAction(sender: AnyObject) {
        
        let loginManager = FBSDKLoginManager()
        
        loginManager.logInWithPublishPermissions(["publish_actions"], handler: { (response:FBSDKLoginManagerLoginResult!, error: NSError!) in
            if(error != nil){
                // Handle error
            }
            else if(response.isCancelled){
                // Authorization has been canceled by user
            }
            else {
                //success
                self.fetchUserInfo()
            }
        })
        
    }
    
    func fetchUserInfo() {
        
        let graphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
        graphRequest.startWithCompletionHandler { (connection : FBSDKGraphRequestConnection!, result : AnyObject!, error : NSError!) -> Void in
            
            if error == nil {
                
                print("Friends are : \(result)")
                
                var dict = result as! NSDictionary
                
                let network = TPNetworkAPI()
//                network.loginWith(dict.objectForKey("id"), name: "", birthday: "", emails: "", bio: "", location: "")
                
            } else {
                
                print("Error Getting Friends \(error)");
                
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
