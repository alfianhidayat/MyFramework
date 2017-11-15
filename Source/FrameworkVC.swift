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

public class FrameworkVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    override public func viewDidLoad() {
        super.viewDidLoad()
        let podBundle = Bundle(for: FrameworkVC.self)
        let bundleURL = podBundle.url(forResource: "MyFramework", withExtension: "bundle")
        let bundle = Bundle(url: bundleURL!)!
        let cellNib = UINib(nibName: "OurCell", bundle: bundle)
        tableView.register(cellNib, forCellReuseIdentifier: "OurCell")
        tableView.estimatedRowHeight = 80
        tableView.rowHeight = UITableViewAutomaticDimension
    }
}

extension FrameworkVC: UITableViewDelegate {}

extension FrameworkVC: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "OurCell")!
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
}
