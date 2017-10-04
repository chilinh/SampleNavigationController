//
//  ChildViewController.swift
//  SampleNavigationController
//
//  Created by Linh Nguyen on 10/5/17.
//  Copyright © 2017 MC. All rights reserved.
//

import UIKit
import Material

class ChildViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Color.cyan.darken1
        navigationItem.title = "Child"
    }
}
