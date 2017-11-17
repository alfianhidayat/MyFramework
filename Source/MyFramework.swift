//
//  MyFramework.swift
//  MyFramework
//
//  Created by Alfian Hidayat on 14/11/17.
//

import UIKit

public class MyFramework {
    
    public static func performSegueToFrameworkVC(caller: UIViewController) {
        let podBundle = Bundle(for: FrameworkVC.self)
        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)!
        let storyboard = UIStoryboard(name: "FrameworkStoryboard", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController() as! QRCodeViewController
        vc.delegate = caller as! MyFrameworkDelegate
        caller.present(vc, animated: true, completion: nil)
    }
    
//    static var bundle:Bundle {
//        let podBundle = Bundle(for: FrameworkVC.self)
//        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
//        return Bundle(url: bundleURL!)!
//    }
}
