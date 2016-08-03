//
//  XXTableViewController.swift
//  XXSwiftUseOC
//
//  Created by tomxiang on 8/3/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

import UIKit

class XXTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    lazy var tableView: UITableView! = {
        var tableView = UITableView(frame: CGRectZero, style: UITableViewStyle.Grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        return tableView
    }()
    
    //MARK: UITableViewDelegate
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        return cell
    }
}
