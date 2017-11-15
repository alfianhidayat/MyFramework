//
//  ViewController.swift
//  MyFramework
//
//  Created by alfianhidayat on 11/14/2017.
//  Copyright (c) 2017 alfianhidayat. All rights reserved.
//

import UIKit
import MyFramework

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        MyFramework.performSegueToFrameworkVC(caller: self)
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

