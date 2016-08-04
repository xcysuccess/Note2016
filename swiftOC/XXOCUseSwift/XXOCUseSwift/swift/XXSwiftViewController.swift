//
//  XXSwiftViewController.swift
//  XXOCUseSwift
//
//  Created by tomxiang on 8/4/16.
//  Copyright © 2016 tomxiang. All rights reserved.
//

import UIKit

class XXSwiftViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        printOSMOView();
    }
    
    func printOSMOView() -> Void {
        let osmoView:OSMOView = OSMOView()
        osmoView.print();
    }
    
}