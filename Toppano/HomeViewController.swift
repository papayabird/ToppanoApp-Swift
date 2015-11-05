//
//  HomeViewController.swift
//  Toppano
//
//  Created by papayabird on 2015/11/5.
//  Copyright © 2015年 papayabird. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Action(sender: AnyObject) {
        
        let mainVC = MainViewController(nibName:"MainViewController",bundle:nil);
        self.navigationController!.pushViewController(mainVC, animated: true);
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
