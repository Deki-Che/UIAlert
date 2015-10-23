//
//  ViewController.swift
//  UIAlert
//
//  Created by Deki on 15/10/23.
//  Copyright © 2015年 Deki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alert:UIAlertController?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alert = UIAlertController(title: "提示", message: "你爱我吗？", preferredStyle: UIAlertControllerStyle.Alert)
        
//        let alertAction :UIAlertAction = UIAlertAction(title: "确定", style: UIAlertActionStyle.Default) { (param:UIAlertAction) -> Void in
//            print("真爱啊")
//        }
        
        alert?.addTextFieldWithConfigurationHandler({ (param:UITextField) -> Void in
            param.placeholder = "我们都爱惠婷"
        })
        
        let alertAction = UIAlertAction(title: "确定", style: .Default) { (param:UIAlertAction) -> Void in
            if let textFields = self.alert?.textFields {
                let txtF = textFields as [UITextField]
                let txt = txtF[0].text
                print("收到的信息是：\(txt!)")
            }
        }
        
        
        alert!.addAction(alertAction)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.presentViewController(alert!, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

