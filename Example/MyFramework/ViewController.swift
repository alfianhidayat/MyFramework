//
//  ViewController.swift
//  MyFramework
//
//  Created by alfianhidayat on 11/14/2017.
//  Copyright (c) 2017 alfianhidayat. All rights reserved.
//

import UIKit
import MyFramework

class ViewController: UIViewController, MyFrameworkDelegate {
    @IBOutlet weak var label: UILabel!
    
    func showQRContent(_str: String) {
        print(_str)
        label.text = _str
//        let alertController = UIAlertController(title: "Message", message:
//            _str, preferredStyle: UIAlertControllerStyle.alert)
//        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.default,handler: nil))
//        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func btnShowSDK(_ sender: Any) {
        MyFramework.performSegueToFrameworkVC(caller: self)
    }
    

    override func viewDidAppear(_ animated: Bool) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

