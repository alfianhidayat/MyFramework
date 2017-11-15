//
//  FrameworkVC.swift
//  MyFramework
//
//  Created by Alfian Hidayat on 14/11/17.
//

//import UIKit
//
//public class FrameworkVC: UITableViewController {
//
//    override public func viewDidLoad() {
//        super.viewDidLoad()
//        let podBundle = Bundle(for: FrameworkVC.self)
//        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
//        let bundle = Bundle(url: bundleURL!)!
//        let cellNib = UINib(nibName: "OurCell", bundle: bundle)
//        self.tableView.register(cellNib, forCellReuseIdentifier: "OurCell")
//        self.tableView.estimatedRowHeight = 80
//        self.tableView.rowHeight = UITableViewAutomaticDimension
//    }
//
//    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return tableView.dequeueReusableCell(withIdentifier: "OurCell")!
//    }
//
//    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//}

import UIKit
import Alamofire
import SwiftyJSON

public class FrameworkVC: UIViewController {
    
    @IBOutlet weak var profileText: UILabel!
    @IBOutlet weak var user: UITextField!
    //    @IBOutlet weak var tableView: UITableView!
    override public func viewDidLoad() {
        super.viewDidLoad()
//        let podBundle = Bundle(for: FrameworkVC.self)
//        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
//        let bundle = Bundle(url: bundleURL!)!
//        let cellNib = UINib(nibName: "OurCell", bundle: bundle)
//        tableView.register(cellNib, forCellReuseIdentifier: "OurCell")
//        tableView.estimatedRowHeight = 80
//        tableView.rowHeight = UITableViewAutomaticDimension
    }
    @IBAction func btnGetProfile(_ sender: Any) {
        Alamofire.request("https://api.github.com/users/"+user.text!).responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
                let jsonObject = JSON(json)
                let profile : String = "Nama : \(jsonObject["name"]) \n Username : \(jsonObject["login"])"
                self.profileText.text = profile
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }
}

//extension FrameworkVC: UITableViewDelegate {}
//
//extension FrameworkVC: UITableViewDataSource {
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return tableView.dequeueReusableCell(withIdentifier: "OurCell")!
//    }
//    
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//}

