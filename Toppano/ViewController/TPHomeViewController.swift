//
//  TPHomeViewController.swift
//  Toppano
//
//  Created by papayabird on 2015/11/6.
//  Copyright © 2015年 papayabird. All rights reserved.
//

import UIKit
import FBSDKLoginKit
class TPHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let graphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
        graphRequest.startWithCompletionHandler { (connection : FBSDKGraphRequestConnection!, result : AnyObject!, error : NSError!) -> Void in
            
            if error == nil {
                
                print("Friends are : \(result)")
                
                if result is [String : AnyObject] {
                    
                    let resultdict = result as! NSDictionary
                 

                }
                else {
                    
                }
                
                

                
            } else {
                
                print("Error Getting Friends \(error)");
                
            }
        }

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
